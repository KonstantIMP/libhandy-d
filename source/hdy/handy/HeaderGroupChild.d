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
module handy.HeaderGroupChild;

private import gobject.ObjectG;
private import gtk.HeaderBar : GtkdHeaderBar = HeaderBar;
private import handy.HeaderBar : HdydHeaderBar = HeaderBar;
private import handy.HeaderGroup;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class HeaderGroupChild : ObjectG
{
	/** the main Gtk struct */
	protected HdyHeaderGroupChild* hdyHeaderGroupChild;

	/** Get the main Gtk struct */
	public HdyHeaderGroupChild* getHeaderGroupChildStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyHeaderGroupChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyHeaderGroupChild;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyHeaderGroupChild* hdyHeaderGroupChild, bool ownedRef = false)
	{
		this.hdyHeaderGroupChild = hdyHeaderGroupChild;
		super(cast(GObject*)hdyHeaderGroupChild, ownedRef);
	}

	/**
	 * Gets the child #GtkHeaderBar.
	 * Use hdy_header_group_child_get_child_type() to check the child type.
	 *
	 * Returns: the child #GtkHeaderBar, or %NULL in case of error.
	 *
	 * Since: 1.0
	 */
	public GtkdHeaderBar getGtkHeaderBar()
	{
		auto __p = hdy_header_group_child_get_gtk_header_bar(hdyHeaderGroupChild);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GtkdHeaderBar)(cast(GtkHeaderBar*) __p);
	}

	/**
	 * Gets the child #HdyHeaderBar.
	 * Use hdy_header_group_child_get_child_type() to check the child type.
	 *
	 * Returns: the child #HdyHeaderBar, or %NULL in case of error.
	 *
	 * Since: 1.0
	 */
	public HdydHeaderBar getHeaderBar()
	{
		auto __p = hdy_header_group_child_get_header_bar(hdyHeaderGroupChild);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(HdydHeaderBar)(cast(HdyHeaderBar*) __p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return hdy_header_group_child_get_type();
	}

	/**
	 * Gets the child type.
	 *
	 * Returns: the child type.
	 *
	 * Since: 1.0
	 */
	public HdyHeaderGroupChildType getChildType()
	{
		return hdy_header_group_child_get_child_type(hdyHeaderGroupChild);
	}

	/**
	 * Gets the child #HdyHeaderGroup.
	 * Use hdy_header_group_child_get_child_type() to check the child type.
	 *
	 * Returns: the child #HdyHeaderGroup, or %NULL in case of error.
	 *
	 * Since: 1.0
	 */
	public HeaderGroup getHeaderGroup()
	{
		auto __p = hdy_header_group_child_get_header_group(hdyHeaderGroupChild);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(HeaderGroup)(cast(HdyHeaderGroup*) __p);
	}
}
