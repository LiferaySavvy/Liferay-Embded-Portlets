package com.meera.dashboard;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class DashBoardAction
 */
public class DashBoardAction extends MVCPortlet {
	public void naviGateToPortletPage(ActionRequest actionRequest, ActionResponse actionResponse)
	throws IOException, PortletException, PortalException,
	SystemException {
		System.out.println("===naviGateToPortletPage==="+ParamUtil.getString(actionRequest,"portletId"));
		PortalUtil.copyRequestParameters(actionRequest, actionResponse);
		actionRequest.getPortletSession().setAttribute("portletId", ParamUtil.getString(actionRequest,"portletId"));
		
	}

}
