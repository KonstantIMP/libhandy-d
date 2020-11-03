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
module handy.PreferencesWindow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import handy.Window;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class PreferencesWindow : Window
{
	/** the main Gtk struct */
	protected HdyPreferencesWindow* hdyPreferencesWindow;

	/** Get the main Gtk struct */
	public HdyPreferencesWindow* getPreferencesWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyPreferencesWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyPreferencesWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyPreferencesWindow* hdyPreferencesWindow, bool ownedRef = false)
	{
		this.hdyPreferencesWindow = hdyPreferencesWindow;
		super(cast(HdyWindow*)hdyPreferencesWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_preferences_window_get_type();
	}

	/**
	 * Creates a new #HdyPreferencesWindow.
	 *
	 * Returns: a new #HdyPreferencesWindow
	 *
	 * Since: 0.0.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_preferences_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyPreferencesWindow*) __p);
	}

	/**
	 * Closes the current subpage to return back to the preferences, if there is no
	 * presented subpage, this does nothing.
	 *
	 * Since: 1.0
	 */
	public void closeSubpage()
	{
		hdy_preferences_window_close_subpage(hdyPreferencesWindow);
	}

	/**
	 * Returns whether or not @self allows switching from a subpage to the
	 * preferences via a swipe gesture.
	 *
	 * Returns: %TRUE if back swipe is enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanSwipeBack()
	{
		return hdy_preferences_window_get_can_swipe_back(hdyPreferencesWindow) != 0;
	}

	/**
	 * Gets whether search is enabled for @self.
	 *
	 * Returns: whether search is enabled for @self.
	 *
	 * Since: 1.0
	 */
	public bool getSearchEnabled()
	{
		return hdy_preferences_window_get_search_enabled(hdyPreferencesWindow) != 0;
	}

	/**
	 * Sets @subpage as the window's subpage and present it.
	 * The transition can be cancelled by the user, in which case visible child will
	 * change back to the previously visible child.
	 *
	 * Params:
	 *     subpage = the subpage
	 *
	 * Since: 1.0
	 */
	public void presentSubpage(Widget subpage)
	{
		hdy_preferences_window_present_subpage(hdyPreferencesWindow, (subpage is null) ? null : subpage.getWidgetStruct());
	}

	/**
	 * Sets whether or not @self allows switching from a subpage to the preferences
	 * via a swipe gesture.
	 *
	 * Params:
	 *     canSwipeBack = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanSwipeBack(bool canSwipeBack)
	{
		hdy_preferences_window_set_can_swipe_back(hdyPreferencesWindow, canSwipeBack);
	}

	/**
	 * Sets whether search is enabled for @self.
	 *
	 * Params:
	 *     searchEnabled = %TRUE to enable search, %FALSE to disable it
	 *
	 * Since: 1.0
	 */
	public void setSearchEnabled(bool searchEnabled)
	{
		hdy_preferences_window_set_search_enabled(hdyPreferencesWindow, searchEnabled);
	}
}
