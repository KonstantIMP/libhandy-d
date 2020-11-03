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
module handy.SwipeTracker;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import handy.SwipeableIF;
private import handy.c.functions;
public  import handy.c.types;
private import std.algorithm;


/** */
public class SwipeTracker : ObjectG, OrientableIF
{
	/** the main Gtk struct */
	protected HdySwipeTracker* hdySwipeTracker;

	/** Get the main Gtk struct */
	public HdySwipeTracker* getSwipeTrackerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdySwipeTracker;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdySwipeTracker;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdySwipeTracker* hdySwipeTracker, bool ownedRef = false)
	{
		this.hdySwipeTracker = hdySwipeTracker;
		super(cast(GObject*)hdySwipeTracker, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdySwipeTracker);


	/** */
	public static GType getType()
	{
		return hdy_swipe_tracker_get_type();
	}

	/**
	 * Create a new #HdySwipeTracker object on @widget.
	 *
	 * Params:
	 *     swipeable = a #GtkWidget to add the tracker on
	 *
	 * Returns: the newly created #HdySwipeTracker object
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SwipeableIF swipeable)
	{
		auto __p = hdy_swipe_tracker_new((swipeable is null) ? null : swipeable.getSwipeableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdySwipeTracker*) __p, true);
	}

	/**
	 * Get whether @self can be dragged with mouse pointer.
	 *
	 * Returns: %TRUE is mouse dragging is allowed
	 *
	 * Since: 1.0
	 */
	public bool getAllowMouseDrag()
	{
		return hdy_swipe_tracker_get_allow_mouse_drag(hdySwipeTracker) != 0;
	}

	/**
	 * Get whether @self is enabled. When it's not enabled, no events will be
	 * processed. Generally widgets will want to expose this via a property.
	 *
	 * Returns: %TRUE if @self is enabled
	 *
	 * Since: 1.0
	 */
	public bool getEnabled()
	{
		return hdy_swipe_tracker_get_enabled(hdySwipeTracker) != 0;
	}

	/**
	 * Get whether @self is reversing the swipe direction.
	 *
	 * Returns: %TRUE is the direction is reversed
	 *
	 * Since: 1.0
	 */
	public bool getReversed()
	{
		return hdy_swipe_tracker_get_reversed(hdySwipeTracker) != 0;
	}

	/**
	 * Get @self's swipeable widget.
	 *
	 * Returns: the swipeable widget
	 *
	 * Since: 1.0
	 */
	public SwipeableIF getSwipeable()
	{
		auto __p = hdy_swipe_tracker_get_swipeable(hdySwipeTracker);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SwipeableIF)(cast(HdySwipeable*) __p);
	}

	/**
	 * Set whether @self can be dragged with mouse pointer. This should usually be
	 * %FALSE.
	 *
	 * Params:
	 *     allowMouseDrag = whether to allow mouse dragging
	 *
	 * Since: 1.0
	 */
	public void setAllowMouseDrag(bool allowMouseDrag)
	{
		hdy_swipe_tracker_set_allow_mouse_drag(hdySwipeTracker, allowMouseDrag);
	}

	/**
	 * Set whether @self is enabled. When it's not enabled, no events will be
	 * processed. Usually widgets will want to expose this via a property.
	 *
	 * Params:
	 *     enabled = whether to enable to swipe tracker
	 *
	 * Since: 1.0
	 */
	public void setEnabled(bool enabled)
	{
		hdy_swipe_tracker_set_enabled(hdySwipeTracker, enabled);
	}

	/**
	 * Set whether to reverse the swipe direction. If @self is horizontal,
	 * can be used for supporting RTL text direction.
	 *
	 * Params:
	 *     reversed = whether to reverse the swipe direction
	 *
	 * Since: 1.0
	 */
	public void setReversed(bool reversed)
	{
		hdy_swipe_tracker_set_reversed(hdySwipeTracker, reversed);
	}

	/**
	 * Move the current progress value by @delta. This can be used to adjust the
	 * current position if snap points move during the gesture.
	 *
	 * Params:
	 *     delta = the position delta
	 *
	 * Since: 1.0
	 */
	public void shiftPosition(double delta)
	{
		hdy_swipe_tracker_shift_position(hdySwipeTracker, delta);
	}

	/**
	 * This signal is emitted when a possible swipe is detected.
	 *
	 * The @direction value can be used to restrict the swipe to a certain
	 * direction.
	 *
	 * Params:
	 *     direction = The direction of the swipe
	 *     direct = %TRUE if the swipe is directly triggered by a gesture,
	 *         %FALSE if it's triggered via a #HdySwipeGroup
	 *
	 * Since: 1.0
	 */
	gulong addOnBeginSwipe(void delegate(HdyNavigationDirection, bool, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted as soon as the gesture has stopped.
	 *
	 * Params:
	 *     duration = Snap-back animation duration in milliseconds
	 *     to = The progress value to animate to
	 *
	 * Since: 1.0
	 */
	gulong addOnEndSwipe(void delegate(long, double, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted every time the progress value changes.
	 *
	 * Params:
	 *     progress = The current animation progress value
	 *
	 * Since: 1.0
	 */
	gulong addOnUpdateSwipe(void delegate(double, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
