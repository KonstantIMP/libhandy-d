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
module handy.WindowHandle;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.EventBox;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class WindowHandle : EventBox
{
	/** the main Gtk struct */
	protected HdyWindowHandle* hdyWindowHandle;

	/** Get the main Gtk struct */
	public HdyWindowHandle* getWindowHandleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyWindowHandle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyWindowHandle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyWindowHandle* hdyWindowHandle, bool ownedRef = false)
	{
		this.hdyWindowHandle = hdyWindowHandle;
		super(cast(GtkEventBox*)hdyWindowHandle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_window_handle_get_type();
	}

	/**
	 * Creates a new #HdyWindowHandle.
	 *
	 * Returns: a newly created #HdyWindowHandle
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_window_handle_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyWindowHandle*) __p, true);
	}
}
