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
module handy.ViewSwitcherTitle;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Stack;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class ViewSwitcherTitle : Bin
{
	/** the main Gtk struct */
	protected HdyViewSwitcherTitle* hdyViewSwitcherTitle;

	/** Get the main Gtk struct */
	public HdyViewSwitcherTitle* getViewSwitcherTitleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyViewSwitcherTitle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyViewSwitcherTitle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyViewSwitcherTitle* hdyViewSwitcherTitle, bool ownedRef = false)
	{
		this.hdyViewSwitcherTitle = hdyViewSwitcherTitle;
		super(cast(GtkBin*)hdyViewSwitcherTitle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_view_switcher_title_get_type();
	}

	/**
	 * Creates a new #HdyViewSwitcherTitle widget.
	 *
	 * Returns: a new #HdyViewSwitcherTitle
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_view_switcher_title_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyViewSwitcherTitle*) __p);
	}

	/**
	 * Gets the policy of @self.
	 *
	 * Returns: the policy of @self
	 *
	 * Since: 1.0
	 */
	public HdyViewSwitcherPolicy getPolicy()
	{
		return hdy_view_switcher_title_get_policy(hdyViewSwitcherTitle);
	}

	/**
	 * Get the #GtkStack being controlled by the #HdyViewSwitcher.
	 *
	 * Returns: the #GtkStack, or %NULL if none has been set
	 *
	 * Since: 1.0
	 */
	public Stack getStack()
	{
		auto __p = hdy_view_switcher_title_get_stack(hdyViewSwitcherTitle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) __p);
	}

	/**
	 * Gets the subtitle of @self. See hdy_view_switcher_title_set_subtitle().
	 *
	 * Returns: the subtitle of @self, or %NULL.
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(hdy_view_switcher_title_get_subtitle(hdyViewSwitcherTitle));
	}

	/**
	 * Gets the title of @self. See hdy_view_switcher_title_set_title().
	 *
	 * Returns: the title of @self, or %NULL.
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(hdy_view_switcher_title_get_title(hdyViewSwitcherTitle));
	}

	/**
	 * Get whether the title label of @self is visible.
	 *
	 * Returns: %TRUE if the title label of @self is visible, %FALSE if not.
	 *
	 * Since: 1.0
	 */
	public bool getTitleVisible()
	{
		return hdy_view_switcher_title_get_title_visible(hdyViewSwitcherTitle) != 0;
	}

	/**
	 * Gets whether @self's view switcher is enabled.
	 *
	 * See hdy_view_switcher_title_set_view_switcher_enabled().
	 *
	 * Returns: %TRUE if the view switcher is enabled, %FALSE otherwise.
	 *
	 * Since: 1.0
	 */
	public bool getViewSwitcherEnabled()
	{
		return hdy_view_switcher_title_get_view_switcher_enabled(hdyViewSwitcherTitle) != 0;
	}

	/**
	 * Sets the policy of @self.
	 *
	 * Params:
	 *     policy = the new policy
	 *
	 * Since: 1.0
	 */
	public void setPolicy(HdyViewSwitcherPolicy policy)
	{
		hdy_view_switcher_title_set_policy(hdyViewSwitcherTitle, policy);
	}

	/**
	 * Sets the #GtkStack to control.
	 *
	 * Params:
	 *     stack = a #GtkStack
	 *
	 * Since: 1.0
	 */
	public void setStack(Stack stack)
	{
		hdy_view_switcher_title_set_stack(hdyViewSwitcherTitle, (stack is null) ? null : stack.getStackStruct());
	}

	/**
	 * Sets the subtitle of @self. The subtitle should give a user additional
	 * details.
	 *
	 * Params:
	 *     subtitle = a subtitle, or %NULL
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		hdy_view_switcher_title_set_subtitle(hdyViewSwitcherTitle, Str.toStringz(subtitle));
	}

	/**
	 * Sets the title of @self. The title should give a user additional details. A
	 * good title should not include the application name.
	 *
	 * Params:
	 *     title = a title, or %NULL
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		hdy_view_switcher_title_set_title(hdyViewSwitcherTitle, Str.toStringz(title));
	}

	/**
	 * Make @self enable or disable its view switcher. If it is disabled, the title
	 * will be displayed instead. This allows to programmatically and prematurely
	 * hide the view switcher of @self even if it fits in the available space.
	 *
	 * This can be used e.g. to ensure the view switcher is hidden below a certain
	 * window width, or any other constraint you find suitable.
	 *
	 * Params:
	 *     enabled = %TRUE to enable the view switcher, %FALSE to disable it
	 *
	 * Since: 1.0
	 */
	public void setViewSwitcherEnabled(bool enabled)
	{
		hdy_view_switcher_title_set_view_switcher_enabled(hdyViewSwitcherTitle, enabled);
	}
}
