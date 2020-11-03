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
module handy.SwipeableIF;

private import gobject.ObjectG;
private import gobject.Signals;
private import handy.SwipeTracker;
private import handy.c.functions;
public  import handy.c.types;
private import std.algorithm;


/** */
public interface SwipeableIF{
	/** Get the main Gtk struct */
	public HdySwipeable* getSwipeableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return hdy_swipeable_get_type();
	}

	/**
	 * Emits HdySwipeable::child-switched signal. This should be called when the
	 * widget switches visible child widget.
	 *
	 * @duration can be 0 if the child is switched without animation.
	 *
	 * Params:
	 *     index = the index of the child to switch to
	 *     duration = Animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	public void emitChildSwitched(uint index, long duration);

	/**
	 * Gets the progress @self will snap back to after the gesture is canceled.
	 *
	 * Returns: the cancel progress, unitless
	 *
	 * Since: 1.0
	 */
	public double getCancelProgress();

	/**
	 * Gets the swipe distance of @self. This corresponds to how many pixels
	 * 1 unit represents.
	 *
	 * Returns: the swipe distance in pixels
	 *
	 * Since: 1.0
	 */
	public double getDistance();

	/**
	 * Gets the current progress of @self
	 *
	 * Returns: the current progress, unitless
	 *
	 * Since: 1.0
	 */
	public double getProgress();

	/**
	 * Gets the snap points of @self. Each snap point represents a progress value
	 * that is considered acceptable to end the swipe on.
	 *
	 * Returns: the snap points of
	 *     @self. The array must be freed with g_free().
	 *
	 * Since: 1.0
	 */
	public double[] getSnapPoints();

	/**
	 * Gets the area @self can start a swipe from for the given direction and
	 * gesture type.
	 * This can be used to restrict swipes to only be possible from a certain area,
	 * for example, to only allow edge swipes, or to have a draggable element and
	 * ignore swipes elsewhere.
	 *
	 * Swipe area is only considered for direct swipes (as in, not initiated by
	 * #HdySwipeGroup).
	 *
	 * If not implemented, the default implementation returns the allocation of
	 * @self, allowing swipes from anywhere.
	 *
	 * Params:
	 *     navigationDirection = the direction of the swipe
	 *     isDrag = whether the swipe is caused by a dragging gesture
	 *     rect = a pointer to a #GdkRectangle to store the swipe area
	 *
	 * Since: 1.0
	 */
	public void getSwipeArea(HdyNavigationDirection navigationDirection, bool isDrag, out GdkRectangle rect);

	/**
	 * Gets the #HdySwipeTracker used by this swipeable widget.
	 *
	 * Returns: the swipe tracker
	 *
	 * Since: 1.0
	 */
	public SwipeTracker getSwipeTracker();

	/**
	 * See HdySwipeable::child-switched.
	 *
	 * Params:
	 *     index = the index of the child to switch to
	 *     duration = Animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	public void switchChild(uint index, long duration);

	/**
	 * This signal should be emitted when the widget's visible child is changed.
	 *
	 * @duration can be 0 if the child is switched without animation.
	 *
	 * This is used by #HdySwipeGroup, applications should not connect to it.
	 *
	 * Params:
	 *     index = the index of the child to switch to
	 *     duration = Animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	gulong addOnChildSwitched(void delegate(uint, long, SwipeableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
