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
module handy.HeaderGroup;

private import glib.ConstructionException;
private import glib.ListSG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.HeaderBar : GtkdHeaderBar = HeaderBar;
private import handy.HeaderBar : HdydHeaderBar = HeaderBar;
private import handy.HeaderGroupChild;
private import handy.c.functions;
public  import handy.c.types;
private import std.algorithm;


/** */
public class HeaderGroup : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected HdyHeaderGroup* hdyHeaderGroup;

	/** Get the main Gtk struct */
	public HdyHeaderGroup* getHeaderGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyHeaderGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyHeaderGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyHeaderGroup* hdyHeaderGroup, bool ownedRef = false)
	{
		this.hdyHeaderGroup = hdyHeaderGroup;
		super(cast(GObject*)hdyHeaderGroup, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(HdyHeaderGroup);

	/**
	 * Adds @header_bar to @self.
	 * When the widget is destroyed or no longer referenced elsewhere, it will
	 * be removed from the header group.
	 *
	 * Params:
	 *     headerBar = the #GtkHeaderBar to add
	 *
	 * Since: 1.0
	 */
	public void addGtkHeaderBar(GtkdHeaderBar headerBar)
	{
		hdy_header_group_add_gtk_header_bar(hdyHeaderGroup, (headerBar is null) ? null : headerBar.getHeaderBarStruct());
	}

	/**
	 * Adds @header_bar to @self.
	 * When the widget is destroyed or no longer referenced elsewhere, it will
	 * be removed from the header group.
	 *
	 * Params:
	 *     headerBar = the #HdyHeaderBar to add
	 *
	 * Since: 1.0
	 */
	public void addHeaderBar(HdydHeaderBar headerBar)
	{
		hdy_header_group_add_header_bar(hdyHeaderGroup, (headerBar is null) ? null : headerBar.getHeaderBarStruct());
	}

	/**
	 * Removes @header_bar from @self.
	 *
	 * Params:
	 *     headerBar = the #GtkHeaderBar to remove
	 *
	 * Since: 1.0
	 */
	public void removeGtkHeaderBar(GtkdHeaderBar headerBar)
	{
		hdy_header_group_remove_gtk_header_bar(hdyHeaderGroup, (headerBar is null) ? null : headerBar.getHeaderBarStruct());
	}

	/**
	 * Removes @header_bar from @self.
	 *
	 * Params:
	 *     headerBar = the #HdyHeaderBar to remove
	 *
	 * Since: 1.0
	 */
	public void removeHeaderBar(HdydHeaderBar headerBar)
	{
		hdy_header_group_remove_header_bar(hdyHeaderGroup, (headerBar is null) ? null : headerBar.getHeaderBarStruct());
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return hdy_header_group_get_type();
	}

	/** */
	public this()
	{
		auto __p = hdy_header_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyHeaderGroup*) __p, true);
	}

	/**
	 * Adds @header_group to @self.
	 * When the nested group is no longer referenced elsewhere, it will be removed
	 * from the header group.
	 *
	 * Params:
	 *     headerGroup = the #HdyHeaderGroup to add
	 *
	 * Since: 1.0
	 */
	public void addHeaderGroup(HeaderGroup headerGroup)
	{
		hdy_header_group_add_header_group(hdyHeaderGroup, (headerGroup is null) ? null : headerGroup.getHeaderGroupStruct());
	}

	/**
	 * Returns the list of children associated with @self.
	 *
	 * Returns: the #GSList of
	 *     children. The list is owned by libhandy and should not be modified.
	 *
	 * Since: 1.0
	 */
	public ListSG getChildren()
	{
		auto __p = hdy_header_group_get_children(hdyHeaderGroup);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Gets whether the elements of the group should all receive the full decoration.
	 *
	 * Returns: %TRUE if the elements of the group should all receive the full
	 *     decoration, %FALSE otherwise.
	 *
	 * Since: 1.0
	 */
	public bool getDecorateAll()
	{
		return hdy_header_group_get_decorate_all(hdyHeaderGroup) != 0;
	}

	/**
	 * Removes @child from @self.
	 *
	 * Params:
	 *     child = the #HdyHeaderGroupChild to remove
	 *
	 * Since: 1.0
	 */
	public void removeChild(HeaderGroupChild child)
	{
		hdy_header_group_remove_child(hdyHeaderGroup, (child is null) ? null : child.getHeaderGroupChildStruct());
	}

	/**
	 * Removes a nested #HdyHeaderGroup from a #HdyHeaderGroup
	 *
	 * Params:
	 *     headerGroup = the #HdyHeaderGroup to remove
	 *
	 * Since: 1.0
	 */
	public void removeHeaderGroup(HeaderGroup headerGroup)
	{
		hdy_header_group_remove_header_group(hdyHeaderGroup, (headerGroup is null) ? null : headerGroup.getHeaderGroupStruct());
	}

	/**
	 * Sets whether the elements of the group should all receive the full decoration.
	 *
	 * Params:
	 *     decorateAll = whether the elements of the group should all receive the full decoration
	 *
	 * Since: 1.0
	 */
	public void setDecorateAll(bool decorateAll)
	{
		hdy_header_group_set_decorate_all(hdyHeaderGroup, decorateAll);
	}

	/**
	 * This signal is emitted before updating the decoration layouts.
	 *
	 * Since: 1.0
	 */
	gulong addOnUpdateDecorationLayouts(void delegate(HeaderGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update-decoration-layouts", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
