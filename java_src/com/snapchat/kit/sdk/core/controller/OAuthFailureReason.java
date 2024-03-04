package com.snapchat.kit.sdk.core.controller;

import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public enum OAuthFailureReason {
    UNKNOWN_ERROR,
    INVALID_OAUTH_RESPONSE,
    OAUTH_TOKEN_GRANT_FAILURE,
    FIREBASE_CUSTOM_TOKEN_FETCH_FAILURE;
    
    @Nullable
    public String errorDescription;
}
