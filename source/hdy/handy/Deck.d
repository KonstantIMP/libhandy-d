/*
 * This file is part of d-handy.
 *
 * d-handy is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d-handy is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d-handy; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module handy.Deck;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import handy.SwipeableIF;
private import handy.SwipeableT;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Deck : Container, OrientableIF, SwipeableIF
{
	/** the main Gtk struct */
	protected HdyDeck* hdyDeck;

	/** Get the main Gtk struct */
	public HdyDeck* getDeckStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyDeck;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyDeck;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyDeck* hdyDeck, bool ownedRef = false)
	{
		this.hdyDeck = hdyDeck;
		super(cast(GtkContainer*)hdyDeck, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyDeck);

	// add the Swipeable capabilities
	mixin SwipeableT!(HdyDeck);


	/** */
	public static GType getType()
	{
		return hdy_deck_get_type();
	}

	/** */
	public this()
	{
		auto __p = hdy_deck_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyDeck*) __p);
	}

	/**
	 * Gets the previous or next child, or %NULL if it doesn't exist. This will be
	 * the same widget hdy_deck_navigate() will navigate to.
	 *
	 * Params:
	 *     direction = the direction
	 *
	 * Returns: the previous or next child, or
	 *     %NULL if it doesn't exist.
	 *
	 * Since: 1.0
	 */
	public Widget getAdjacentChild(HdyNavigationDirection direction)
	{
		auto __p = hdy_deck_get_adjacent_child(hdyDeck, direction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the #HdyDeck allows swiping to the previous child.
	 *
	 * Returns: %TRUE if back swipe is enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanSwipeBack()
	{
		return hdy_deck_get_can_swipe_back(hdyDeck) != 0;
	}

	/**
	 * Returns whether the #HdyDeck allows swiping to the next child.
	 *
	 * Returns: %TRUE if forward swipe is enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanSwipeForward()
	{
		return hdy_deck_get_can_swipe_forward(hdyDeck) != 0;
	}

	/**
	 * Finds the child of @self with the name given as the argument. Returns %NULL
	 * if there is no child with this name.
	 *
	 * Params:
	 *     name = the name of the child to find
	 *
	 * Returns: the requested child of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChildByName(string name)
	{
		auto __p = hdy_deck_get_child_by_name(hdyDeck, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether @self is homogeneous for the given orientation.
	 * See hdy_deck_set_homogeneous().
	 *
	 * Params:
	 *     orientation = the orientation
	 *
	 * Returns: whether @self is homogeneous for the given orientation.
	 *
	 * Since: 1.0
	 */
	public bool getHomogeneous(GtkOrientation orientation)
	{
		return hdy_deck_get_homogeneous(hdyDeck, orientation) != 0;
	}

	/**
	 * Returns whether the #HdyDeck is set up to interpolate between
	 * the sizes of children on page switch.
	 *
	 * Returns: %TRUE if child sizes are interpolated
	 *
	 * Since: 1.0
	 */
	public bool getInterpolateSize()
	{
		return hdy_deck_get_interpolate_size(hdyDeck) != 0;
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between children in @self will take.
	 *
	 * Returns: the child transition duration
	 *
	 * Since: 1.0
	 */
	public uint getTransitionDuration()
	{
		return hdy_deck_get_transition_duration(hdyDeck);
	}

	/**
	 * Returns whether @self is currently in a transition from one page to
	 * another.
	 *
	 * Returns: %TRUE if the transition is currently running, %FALSE otherwise.
	 *
	 * Since: 1.0
	 */
	public bool getTransitionRunning()
	{
		return hdy_deck_get_transition_running(hdyDeck) != 0;
	}

	/**
	 * Gets the type of animation that will be used
	 * for transitions between children in @self.
	 *
	 * Returns: the current transition type of @self
	 *
	 * Since: 1.0
	 */
	public HdyDeckTransitionType getTransitionType()
	{
		return hdy_deck_get_transition_type(hdyDeck);
	}

	/**
	 * Gets the visible child widget.
	 *
	 * Returns: the visible child widget
	 *
	 * Since: 1.0
	 */
	public Widget getVisibleChild()
	{
		auto __p = hdy_deck_get_visible_child(hdyDeck);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the name of the currently visible child widget.
	 *
	 * Returns: the name of the visible child
	 *
	 * Since: 1.0
	 */
	public string getVisibleChildName()
	{
		return Str.toString(hdy_deck_get_visible_child_name(hdyDeck));
	}

	/**
	 * Switches to the previous or next child, similar to performing a swipe
	 * gesture to go in @direction.
	 *
	 * Params:
	 *     direction = the direction
	 *
	 * Returns: %TRUE if visible child was changed, %FALSE otherwise.
	 *
	 * Since: 1.0
	 */
	public bool navigate(HdyNavigationDirection direction)
	{
		return hdy_deck_navigate(hdyDeck, direction) != 0;
	}

	/**
	 * Sets whether or not @self allows switching to the previous child via a swipe
	 * gesture.
	 *
	 * Params:
	 *     canSwipeBack = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanSwipeBack(bool canSwipeBack)
	{
		hdy_deck_set_can_swipe_back(hdyDeck, canSwipeBack);
	}

	/**
	 * Sets whether or not @self allows switching to the next child via a swipe
	 * gesture.
	 *
	 * Params:
	 *     canSwipeForward = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanSwipeForward(bool canSwipeForward)
	{
		hdy_deck_set_can_swipe_forward(hdyDeck, canSwipeForward);
	}

	/**
	 * Sets the #HdyDeck to be homogeneous or not for the given orientation.
	 * If it is homogeneous, the #HdyDeck will request the same
	 * width or height for all its children depending on the orientation.
	 * If it isn't, the deck may change width or height when a different child
	 * becomes visible.
	 *
	 * Params:
	 *     orientation = the orientation
	 *     homogeneous = %TRUE to make @self homogeneous
	 *
	 * Since: 1.0
	 */
	public void setHomogeneous(GtkOrientation orientation, bool homogeneous)
	{
		hdy_deck_set_homogeneous(hdyDeck, orientation, homogeneous);
	}

	/**
	 * Sets whether or not @self will interpolate its size when
	 * changing the visible child. If the #HdyDeck:interpolate-size
	 * property is set to %TRUE, @self will interpolate its size between
	 * the current one and the one it'll take after changing the
	 * visible child, according to the set transition duration.
	 *
	 * Params:
	 *     interpolateSize = the new value
	 *
	 * Since: 1.0
	 */
	public void setInterpolateSize(bool interpolateSize)
	{
		hdy_deck_set_interpolate_size(hdyDeck, interpolateSize);
	}

	/**
	 * Sets the duration that transitions between children in @self
	 * will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setTransitionDuration(uint duration)
	{
		hdy_deck_set_transition_duration(hdyDeck, duration);
	}

	/**
	 * Sets the type of animation that will be used for transitions between children
	 * in @self.
	 *
	 * The transition type can be changed without problems at runtime, so it is
	 * possible to change the animation based on the child that is about to become
	 * current.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 1.0
	 */
	public void setTransitionType(HdyDeckTransitionType transition)
	{
		hdy_deck_set_transition_type(hdyDeck, transition);
	}

	/**
	 * Makes @visible_child visible using a transition determined by
	 * HdyDeck:transition-type and HdyDeck:transition-duration. The transition can
	 * be cancelled by the user, in which case visible child will change back to
	 * the previously visible child.
	 *
	 * Params:
	 *     visibleChild = the new child
	 *
	 * Since: 1.0
	 */
	public void setVisibleChild(Widget visibleChild)
	{
		hdy_deck_set_visible_child(hdyDeck, (visibleChild is null) ? null : visibleChild.getWidgetStruct());
	}

	/**
	 * Makes the child with the name @name visible.
	 *
	 * See hdy_deck_set_visible_child() for more details.
	 *
	 * Params:
	 *     name = the name of a child
	 *
	 * Since: 1.0
	 */
	public void setVisibleChildName(string name)
	{
		hdy_deck_set_visible_child_name(hdyDeck, Str.toStringz(name));
	}
}
