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
module handy.SwipeGroup;

private import glib.ConstructionException;
private import glib.ListSG;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import handy.SwipeableIF;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class SwipeGroup : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected HdySwipeGroup* hdySwipeGroup;

	/** Get the main Gtk struct */
	public HdySwipeGroup* getSwipeGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdySwipeGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdySwipeGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdySwipeGroup* hdySwipeGroup, bool ownedRef = false)
	{
		this.hdySwipeGroup = hdySwipeGroup;
		super(cast(GObject*)hdySwipeGroup, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(HdySwipeGroup);


	/** */
	public static GType getType()
	{
		return hdy_swipe_group_get_type();
	}

	/**
	 * Create a new #HdySwipeGroup object.
	 *
	 * Returns: The newly created #HdySwipeGroup object
	 *
	 * Since: 0.0.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_swipe_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdySwipeGroup*) __p, true);
	}

	/**
	 * When the widget is destroyed or no longer referenced elsewhere, it will
	 * be removed from the swipe group.
	 *
	 * Params:
	 *     swipeable = the #HdySwipeable to add
	 *
	 * Since: 0.0.12
	 */
	public void addSwipeable(SwipeableIF swipeable)
	{
		hdy_swipe_group_add_swipeable(hdySwipeGroup, (swipeable is null) ? null : swipeable.getSwipeableStruct());
	}

	/**
	 * Returns the list of swipeables associated with @self.
	 *
	 * Returns: a #GSList of
	 *     swipeables. The list is owned by libhandy and should not be modified.
	 *
	 * Since: 0.0.12
	 */
	public ListSG getSwipeables()
	{
		auto __p = hdy_swipe_group_get_swipeables(hdySwipeGroup);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes a widget from a #HdySwipeGroup.
	 *
	 * Params:
	 *     swipeable = the #HdySwipeable to remove
	 *
	 * Since: 0.0.12
	 */
	public void removeSwipeable(SwipeableIF swipeable)
	{
		hdy_swipe_group_remove_swipeable(hdySwipeGroup, (swipeable is null) ? null : swipeable.getSwipeableStruct());
	}
}
