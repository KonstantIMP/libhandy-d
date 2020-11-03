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
module handy.ApplicationWindow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ApplicationWindow : DGtkApplicationWindow = ApplicationWindow;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class ApplicationWindow : DGtkApplicationWindow
{
	/** the main Gtk struct */
	protected HdyApplicationWindow* hdyApplicationWindow;

	/** Get the main Gtk struct */
	public HdyApplicationWindow* getHandyApplicationWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyApplicationWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyApplicationWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyApplicationWindow* hdyApplicationWindow, bool ownedRef = false)
	{
		this.hdyApplicationWindow = hdyApplicationWindow;
		super(cast(GtkApplicationWindow*)hdyApplicationWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_application_window_get_type();
	}

	/**
	 * Creates a new #HdyApplicationWindow.
	 *
	 * Returns: a newly created #HdyApplicationWindow
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_application_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyApplicationWindow*) __p, true);
	}
}
