package com.tencent.liteav.videobase.videobase;

import com.tencent.imsdk.BaseConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<a, Integer> f31945a = new HashMap<a, Integer>() { // from class: com.tencent.liteav.videobase.videobase.h.1
        {
            put(a.ERR_CODE_NONE, 0);
            put(a.ERR_VIDEO_CAPTURE_EGL_CORE_CREATE_FAILED, -1301);
            put(a.ERR_VIDEO_CAPTURE_OPENGL_ERROR, -1301);
            put(a.ERR_VIDEO_CAPTURE_CAMERA_INVALID_DEVICE, -1301);
            put(a.ERR_VIDEO_CAPTURE_SCREEN_CAPTURE_START_FAILED, -1308);
            put(a.ERR_VIDEO_CAPTURE_SCREEN_UNSUPPORTED, -1309);
            put(a.ERR_VIDEO_CAPTURE_SCREEN_UNAUTHORIZED, -1308);
            put(a.ERR_VIDEO_ENCODE_FATALERROR, -1303);
            put(a.ERR_VIDEO_ENCODE_FAIL, -1303);
            put(a.ERR_VIDEO_NO_AVAILABLE_HEVC_DECODERS, -2304);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Map<c, Integer> f31946b = new HashMap<c, Integer>() { // from class: com.tencent.liteav.videobase.videobase.h.2
        {
            put(c.WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED, 1103);
            put(c.WARNING_VIDEO_ENCODE_START_FAILED_INSUFFICIENT_RESOURCE, 1103);
            put(c.WARNING_VIDEO_ENCODE_START_FAILED, 1103);
            put(c.WARNING_VIDEO_ENCODE_SWAP_BUFFER, 1103);
            put(c.WARNING_VIDEO_RENDER_EGL_CORE_CREATE_FAILED, 2110);
            put(c.WARNING_VIDEO_RENDER_EGL_CORE_DESTROY_FAILED, 2110);
            put(c.WARNING_VIDEO_RENDER_SWAP_BUFFER, 2110);
            put(c.WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED, 2106);
            put(c.WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_ARGUMENT, 2106);
            put(c.WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_STATE, 2106);
            put(c.WARNING_VIDEO_DECODE_START_FAILED_INSUFFICIENT_RESOURCE, 2106);
            put(c.WARNING_VIDEO_DECODE_START_FAILED_OUT_OF_MEMORY, 2106);
            put(c.WARNING_VIDEO_DECODE_START_FAILED, 2106);
            put(c.WARNING_VIDEO_DECODE_RESTART_WHEN_DECODE_ERROR, 2101);
            put(c.WARNING_VIDEO_DECODE_ERROR_NOT_SUPPORT_PIXEL_FORMAT_TYPE, 2101);
            put(c.WARNING_VIDEO_DECODE_FATAL_ERROR, 2101);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private static final Map<b, Integer> f31947c = new HashMap<b, Integer>() { // from class: com.tencent.liteav.videobase.videobase.h.3
        {
            put(b.EVT_VIDEO_DECODE_HW_TO_SW_DECODE_COST_TOO_HIGH, 2108);
            put(b.EVT_VIDEO_DECODE_HW_TO_SW_REMOTE_VIDEO_ENABLE_RPS, 2108);
            put(b.EVT_VIDEO_DECODE_HW_TO_SW_MEDIACODEC_NOT_WORK, 2108);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final Map<b, Integer> f31948d = new HashMap<b, Integer>() { // from class: com.tencent.liteav.videobase.videobase.h.4
        {
            put(b.EVT_VIDEO_DECODE_FIRST_FRAME_DECODED, 10000);
            put(b.EVT_VIDEO_RENDER_FIRST_FRAME_ON_VIEW, 10004);
            put(b.EVT_VIDEO_RENDER_FIRST_FRAME, 10001);
            put(b.EVT_VIDEO_DECODE_TYPE_CHANGE, 10002);
            put(b.EVT_VIDEO_RENDER_RESOLUTION_CHANGE, 10003);
            put(b.EVT_VIDEO_CAPTURE_FIRST_FRAME, 20000);
            put(b.EVT_VIDEO_CAPTURE_CAMERA_START_SUCCESS, Integer.valueOf((int) BaseConstants.ERR_SVR_FRIENDSHIP_INVALID_PARAMETERS));
            put(b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_START_SUCCESS, Integer.valueOf((int) BaseConstants.ERR_SVR_FRIENDSHIP_INVALID_SDKAPPID));
            put(b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_STOP_SUCCESS, Integer.valueOf((int) BaseConstants.ERR_SVR_FRIENDSHIP_ACCOUNT_NOT_FOUND));
            put(b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_INTERRUPTED, Integer.valueOf((int) BaseConstants.ERR_SVR_FRIENDSHIP_ADMIN_REQUIRED));
            put(b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_RESUME, Integer.valueOf((int) BaseConstants.ERR_SVR_FRIENDSHIP_SENSITIVE_TEXT));
            put(b.EVT_VIDEO_ENCODE_START_SUCCESS, Integer.valueOf((int) BaseConstants.ERR_SVR_PROFILE_INVALID_PARAMETERS));
        }
    };

    /* loaded from: classes4.dex */
    public enum a {
        ERR_CODE_NONE,
        ERR_VIDEO_CAPTURE_EGL_CORE_CREATE_FAILED,
        ERR_VIDEO_CAPTURE_OPENGL_ERROR,
        ERR_VIDEO_CAPTURE_CAMERA_INVALID_DEVICE,
        ERR_VIDEO_CAPTURE_SCREEN_CAPTURE_START_FAILED,
        ERR_VIDEO_CAPTURE_SCREEN_UNAUTHORIZED,
        ERR_VIDEO_CAPTURE_SCREEN_UNSUPPORTED,
        ERR_VIDEO_ENCODE_FATALERROR,
        ERR_VIDEO_ENCODE_FAIL,
        ERR_VIDEO_NO_AVAILABLE_HEVC_DECODERS
    }

    /* loaded from: classes4.dex */
    public enum b {
        EVT_CODE_NONE,
        EVT_VIDEO_DECODE_HW_TO_SW_DECODE_COST_TOO_HIGH,
        EVT_VIDEO_DECODE_HW_TO_SW_REMOTE_VIDEO_ENABLE_RPS,
        EVT_VIDEO_DECODE_HW_TO_SW_MEDIACODEC_NOT_WORK,
        EVT_VIDEO_DECODE_FIRST_FRAME_DECODED,
        EVT_VIDEO_RENDER_FIRST_FRAME,
        EVT_VIDEO_DECODE_TYPE_CHANGE,
        EVT_VIDEO_RENDER_RESOLUTION_CHANGE,
        EVT_VIDEO_RENDER_FIRST_FRAME_ON_VIEW,
        EVT_VIDEO_CAPTURE_FIRST_FRAME,
        EVT_VIDEO_CAPTURE_CAMERA_START_SUCCESS,
        EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_START_SUCCESS,
        EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_STOP_SUCCESS,
        EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_INTERRUPTED,
        EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_RESUME,
        EVT_VIDEO_ENCODE_START_SUCCESS,
        EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_SIZE_CHANGE_SUCCESS,
        EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_START_SUCCESS,
        EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_STOP_SUCCESS,
        EVT_VIDEO_PREPROCESS_FACE_RECOGNIZE_SUCESS,
        EVT_VIDEO_PREPROCESS_FACE_RECOGNIZE_FAILED,
        EVT_VIDEO_PREPROCESS_COSMETIC_FIRST_USE,
        EVT_VIDEO_ENCODE_STOP_SUCCESS,
        EVT_VIDEO_ENCODE_SW_TO_HW_CPU_USAGE,
        EVT_VIDEO_ENCODE_HW_TO_SW_MEDIACODEC_NOT_WORK,
        EVT_VIDEO_CONSUMER_RECEIVE_FIRST_FRAME,
        EVT_VIDEO_DECODE_START_DECODE_FIRST_FRAME,
        EVT_VIDEO_DECODE_START_SUCCESS,
        EVT_VIDEO_DECODE_SW_TO_HW_REMOTE_VIDEO_DISABLE_RPS
    }

    /* loaded from: classes4.dex */
    public enum c {
        WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED,
        WARNING_VIDEO_ENCODE_START_FAILED_INSUFFICIENT_RESOURCE,
        WARNING_VIDEO_ENCODE_START_FAILED,
        WARNING_VIDEO_ENCODE_SWAP_BUFFER,
        WARNING_VIDEO_RENDER_EGL_CORE_CREATE_FAILED,
        WARNING_VIDEO_RENDER_EGL_CORE_DESTROY_FAILED,
        WARNING_VIDEO_RENDER_SWAP_BUFFER,
        WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED,
        WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_ARGUMENT,
        WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_STATE,
        WARNING_VIDEO_DECODE_START_FAILED_INSUFFICIENT_RESOURCE,
        WARNING_VIDEO_DECODE_START_FAILED_OUT_OF_MEMORY,
        WARNING_VIDEO_DECODE_START_FAILED,
        WARNING_VIDEO_DECODE_RESTART_WHEN_DECODE_ERROR,
        WARNING_VIDEO_DECODE_ERROR_NOT_SUPPORT_PIXEL_FORMAT_TYPE,
        WARNING_VIDEO_DECODE_FATAL_ERROR,
        WARNING_VIDEO_DECODE_CACHE_EXCEEDED,
        WARNING_VIDEO_DECODE_ABNORMAL,
        WARNING_VIDEO_DECODE_EGL_CORE_DESTROY_FAILED,
        WARNING_VIDEO_DECODE_HARDWARE_ERROR
    }

    public static int a(a aVar) {
        Map<a, Integer> map = f31945a;
        if (map.containsKey(aVar)) {
            return map.get(aVar).intValue();
        }
        return 0;
    }

    public static boolean b(b bVar) {
        return f31947c.containsKey(bVar);
    }

    public static int a(c cVar) {
        Map<c, Integer> map = f31946b;
        if (map.containsKey(cVar)) {
            return map.get(cVar).intValue();
        }
        return 0;
    }

    public static int a(b bVar) {
        Map<b, Integer> map = f31947c;
        if (map.containsKey(bVar)) {
            return map.get(bVar).intValue();
        }
        Map<b, Integer> map2 = f31948d;
        if (map2.containsKey(bVar)) {
            return map2.get(bVar).intValue();
        }
        return 0;
    }
}
