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
module handy.Leaflet;

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
public class Leaflet : Container, OrientableIF, SwipeableIF
{
	/** the main Gtk struct */
	protected HdyLeaflet* hdyLeaflet;

	/** Get the main Gtk struct */
	public HdyLeaflet* getLeafletStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyLeaflet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyLeaflet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyLeaflet* hdyLeaflet, bool ownedRef = false)
	{
		this.hdyLeaflet = hdyLeaflet;
		super(cast(GtkContainer*)hdyLeaflet, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyLeaflet);

	// add the Swipeable capabilities
	mixin SwipeableT!(HdyLeaflet);


	/** */
	public static GType getType()
	{
		return hdy_leaflet_get_type();
	}

	/** */
	public this()
	{
		auto __p = hdy_leaflet_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyLeaflet*) __p);
	}

	/**
	 * Gets the previous or next child that doesn't have 'navigatable' child
	 * property set to %FALSE, or %NULL if it doesn't exist. This will be the same
	 * widget hdy_leaflet_navigate() will navigate to.
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
		auto __p = hdy_leaflet_get_adjacent_child(hdyLeaflet, direction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the #HdyLeaflet allows swiping to the previous child.
	 *
	 * Returns: %TRUE if back swipe is enabled.
	 *
	 * Since: 0.0.12
	 */
	public bool getCanSwipeBack()
	{
		return hdy_leaflet_get_can_swipe_back(hdyLeaflet) != 0;
	}

	/**
	 * Returns whether the #HdyLeaflet allows swiping to the next child.
	 *
	 * Returns: %TRUE if forward swipe is enabled.
	 *
	 * Since: 0.0.12
	 */
	public bool getCanSwipeForward()
	{
		return hdy_leaflet_get_can_swipe_forward(hdyLeaflet) != 0;
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
		auto __p = hdy_leaflet_get_child_by_name(hdyLeaflet, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between children in @self will take.
	 *
	 * Returns: the child transition duration
	 */
	public uint getChildTransitionDuration()
	{
		return hdy_leaflet_get_child_transition_duration(hdyLeaflet);
	}

	/**
	 * Returns whether @self is currently in a transition from one page to
	 * another.
	 *
	 * Returns: %TRUE if the transition is currently running, %FALSE otherwise.
	 */
	public bool getChildTransitionRunning()
	{
		return hdy_leaflet_get_child_transition_running(hdyLeaflet) != 0;
	}

	/**
	 * Gets whether @self is folded.
	 *
	 * Returns: whether @self is folded.
	 */
	public bool getFolded()
	{
		return hdy_leaflet_get_folded(hdyLeaflet) != 0;
	}

	/**
	 * Gets whether @self is homogeneous for the given fold and orientation.
	 * See hdy_leaflet_set_homogeneous().
	 *
	 * Params:
	 *     folded = the fold
	 *     orientation = the orientation
	 *
	 * Returns: whether @self is homogeneous for the given fold and orientation.
	 */
	public bool getHomogeneous(bool folded, GtkOrientation orientation)
	{
		return hdy_leaflet_get_homogeneous(hdyLeaflet, folded, orientation) != 0;
	}

	/**
	 * Returns whether the #HdyLeaflet is set up to interpolate between
	 * the sizes of children on page switch.
	 *
	 * Returns: %TRUE if child sizes are interpolated
	 */
	public bool getInterpolateSize()
	{
		return hdy_leaflet_get_interpolate_size(hdyLeaflet) != 0;
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between modes in @self will take.
	 *
	 * Returns: the mode transition duration
	 */
	public uint getModeTransitionDuration()
	{
		return hdy_leaflet_get_mode_transition_duration(hdyLeaflet);
	}

	/**
	 * Gets the type of animation that will be used
	 * for transitions between modes and children in @self.
	 *
	 * Returns: the current transition type of @self
	 *
	 * Since: 0.0.12
	 */
	public HdyLeafletTransitionType getTransitionType()
	{
		return hdy_leaflet_get_transition_type(hdyLeaflet);
	}

	/**
	 * Gets the visible child widget.
	 *
	 * Returns: the visible child widget
	 */
	public Widget getVisibleChild()
	{
		auto __p = hdy_leaflet_get_visible_child(hdyLeaflet);

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
	 */
	public string getVisibleChildName()
	{
		return Str.toString(hdy_leaflet_get_visible_child_name(hdyLeaflet));
	}

	/**
	 * Switches to the previous or next child that doesn't have 'navigatable' child
	 * property set to %FALSE, similar to performing a swipe gesture to go in
	 * @direction.
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
		return hdy_leaflet_navigate(hdyLeaflet, direction) != 0;
	}

	/**
	 * Sets whether or not @self allows switching to the previous child that has
	 * 'navigatable' child property set to %TRUE via a swipe gesture
	 *
	 * Params:
	 *     canSwipeBack = the new value
	 *
	 * Since: 0.0.12
	 */
	public void setCanSwipeBack(bool canSwipeBack)
	{
		hdy_leaflet_set_can_swipe_back(hdyLeaflet, canSwipeBack);
	}

	/**
	 * Sets whether or not @self allows switching to the next child that has
	 * 'navigatable' child property set to %TRUE via a swipe gesture.
	 *
	 * Params:
	 *     canSwipeForward = the new value
	 *
	 * Since: 0.0.12
	 */
	public void setCanSwipeForward(bool canSwipeForward)
	{
		hdy_leaflet_set_can_swipe_forward(hdyLeaflet, canSwipeForward);
	}

	/**
	 * Sets the duration that transitions between children in @self
	 * will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 */
	public void setChildTransitionDuration(uint duration)
	{
		hdy_leaflet_set_child_transition_duration(hdyLeaflet, duration);
	}

	/**
	 * Sets the #HdyLeaflet to be homogeneous or not for the given fold and orientation.
	 * If it is homogeneous, the #HdyLeaflet will request the same
	 * width or height for all its children depending on the orientation.
	 * If it isn't and it is folded, the leaflet may change width or height
	 * when a different child becomes visible.
	 *
	 * Params:
	 *     folded = the fold
	 *     orientation = the orientation
	 *     homogeneous = %TRUE to make @self homogeneous
	 */
	public void setHomogeneous(bool folded, GtkOrientation orientation, bool homogeneous)
	{
		hdy_leaflet_set_homogeneous(hdyLeaflet, folded, orientation, homogeneous);
	}

	/**
	 * Sets whether or not @self will interpolate its size when
	 * changing the visible child. If the #HdyLeaflet:interpolate-size
	 * property is set to %TRUE, @self will interpolate its size between
	 * the current one and the one it'll take after changing the
	 * visible child, according to the set transition duration.
	 *
	 * Params:
	 *     interpolateSize = the new value
	 */
	public void setInterpolateSize(bool interpolateSize)
	{
		hdy_leaflet_set_interpolate_size(hdyLeaflet, interpolateSize);
	}

	/**
	 * Sets the duration that transitions between modes in @self
	 * will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 */
	public void setModeTransitionDuration(uint duration)
	{
		hdy_leaflet_set_mode_transition_duration(hdyLeaflet, duration);
	}

	/**
	 * Sets the type of animation that will be used for transitions between modes
	 * and children in @self.
	 *
	 * The transition type can be changed without problems at runtime, so it is
	 * possible to change the animation based on the mode or child that is about to
	 * become current.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 0.0.12
	 */
	public void setTransitionType(HdyLeafletTransitionType transition)
	{
		hdy_leaflet_set_transition_type(hdyLeaflet, transition);
	}

	/**
	 * Makes @visible_child visible using a transition determined by
	 * HdyLeaflet:transition-type and HdyLeaflet:child-transition-duration. The
	 * transition can be cancelled by the user, in which case visible child will
	 * change back to the previously visible child.
	 *
	 * Params:
	 *     visibleChild = the new child
	 */
	public void setVisibleChild(Widget visibleChild)
	{
		hdy_leaflet_set_visible_child(hdyLeaflet, (visibleChild is null) ? null : visibleChild.getWidgetStruct());
	}

	/**
	 * Makes the child with the name @name visible.
	 *
	 * See hdy_leaflet_set_visible_child() for more details.
	 *
	 * Params:
	 *     name = the name of a child
	 */
	public void setVisibleChildName(string name)
	{
		hdy_leaflet_set_visible_child_name(hdyLeaflet, Str.toStringz(name));
	}
}
