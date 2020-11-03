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
module handy.PreferencesPage;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class PreferencesPage : Bin
{
	/** the main Gtk struct */
	protected HdyPreferencesPage* hdyPreferencesPage;

	/** Get the main Gtk struct */
	public HdyPreferencesPage* getPreferencesPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyPreferencesPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyPreferencesPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyPreferencesPage* hdyPreferencesPage, bool ownedRef = false)
	{
		this.hdyPreferencesPage = hdyPreferencesPage;
		super(cast(GtkBin*)hdyPreferencesPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_preferences_page_get_type();
	}

	/**
	 * Creates a new #HdyPreferencesPage.
	 *
	 * Returns: a new #HdyPreferencesPage
	 *
	 * Since: 0.0.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_preferences_page_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyPreferencesPage*) __p);
	}

	/**
	 * Gets the icon name for @self, or %NULL.
	 *
	 * Returns: the icon name for @self, or %NULL.
	 *
	 * Since: 0.0.10
	 */
	public string getIconName()
	{
		return Str.toString(hdy_preferences_page_get_icon_name(hdyPreferencesPage));
	}

	/**
	 * Gets the title of @self, or %NULL.
	 *
	 * Returns: the title of the @self, or %NULL.
	 *
	 * Since: 0.0.10
	 */
	public string getTitle()
	{
		return Str.toString(hdy_preferences_page_get_title(hdyPreferencesPage));
	}

	/**
	 * Sets the icon name for @self.
	 *
	 * Params:
	 *     iconName = the icon name, or %NULL
	 *
	 * Since: 0.0.10
	 */
	public void setIconName(string iconName)
	{
		hdy_preferences_page_set_icon_name(hdyPreferencesPage, Str.toStringz(iconName));
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = the title of the page, or %NULL
	 *
	 * Since: 0.0.10
	 */
	public void setTitle(string title)
	{
		hdy_preferences_page_set_title(hdyPreferencesPage, Str.toStringz(title));
	}
}
