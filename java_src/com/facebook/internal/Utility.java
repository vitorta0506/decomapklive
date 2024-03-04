package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.exifinterface.media.ExifInterface;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TCConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(d1 = {"\u0000\u0090\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002Î\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u000200H\u0002J \u00101\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\u0006\u0010/\u001a\u000200H\u0002J'\u00102\u001a\u00020 \"\u0004\b\u0000\u001032\b\u00104\u001a\u0004\u0018\u0001H32\b\u00105\u001a\u0004\u0018\u0001H3H\u0007¢\u0006\u0002\u00106J\u0012\u00107\u001a\u0004\u0018\u00010\u001a2\u0006\u00108\u001a\u00020\u0004H\u0007J&\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u00042\b\u0010=\u001a\u0004\u0018\u00010>H\u0007J\u0018\u0010?\u001a\u00020*2\u0006\u0010/\u001a\u0002002\u0006\u0010@\u001a\u00020\u0004H\u0002J\u0010\u0010A\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0007J\u0012\u0010B\u001a\u00020*2\b\u0010C\u001a\u0004\u0018\u00010DH\u0007J\u001e\u0010E\u001a\u0004\u0018\u00010\u00042\b\u0010F\u001a\u0004\u0018\u00010\u00042\b\u0010G\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010H\u001a\u00020\u00132\u0006\u0010I\u001a\u00020JH\u0002J\u0016\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040L2\u0006\u0010M\u001a\u00020NH\u0007J\u001c\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010P2\u0006\u0010Q\u001a\u00020\u001aH\u0007J\u001c\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040P2\u0006\u0010Q\u001a\u00020\u001aH\u0007J\u001a\u0010S\u001a\u00020\u00062\b\u0010T\u001a\u0004\u0018\u00010U2\u0006\u0010V\u001a\u00020WH\u0007J\u0012\u0010X\u001a\u00020*2\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0007J\b\u0010[\u001a\u00020 H\u0002J\u0010\u0010\\\u001a\u00020\u00042\u0006\u0010]\u001a\u00020\u0006H\u0007J\u0012\u0010^\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u000100H\u0007J\u0010\u0010_\u001a\u00020\u00042\u0006\u0010/\u001a\u000200H\u0007J\n\u0010`\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010a\u001a\u0004\u0018\u00010b2\b\u0010c\u001a\u0004\u0018\u00010>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\u0006\u0010e\u001a\u00020bH\u0007J\u0010\u0010f\u001a\u00020\u00132\u0006\u0010g\u001a\u00020:H\u0007J\n\u0010h\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010i\u001a\u00020\u00042\b\u0010j\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010k\u001a\u00020l2\u0006\u00108\u001a\u00020\u0004H\u0002J\u0018\u0010m\u001a\u00020*2\u0006\u00108\u001a\u00020\u00042\u0006\u0010n\u001a\u00020oH\u0007J\u0012\u0010p\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u000100H\u0007JC\u0010q\u001a\u0004\u0018\u00010r2\n\u0010s\u001a\u0006\u0012\u0002\b\u00030t2\u0006\u0010u\u001a\u00020\u00042\u001e\u0010v\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010t0w\"\b\u0012\u0002\b\u0003\u0018\u00010tH\u0007¢\u0006\u0002\u0010xJ?\u0010q\u001a\u0004\u0018\u00010r2\u0006\u0010y\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u00042\u001e\u0010v\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010t0w\"\b\u0012\u0002\b\u0003\u0018\u00010tH\u0007¢\u0006\u0002\u0010zJ\u0012\u0010{\u001a\u00020\u00042\b\u0010|\u001a\u0004\u0018\u00010\u0004H\u0002J&\u0010}\u001a\u0004\u0018\u00010\u00012\u0006\u0010Q\u001a\u00020\u001a2\b\u0010d\u001a\u0004\u0018\u00010\u00042\b\u0010~\u001a\u0004\u0018\u00010\u0004H\u0007J\u0015\u0010\u007f\u001a\u0004\u0018\u00010\u00042\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u001c\u0010\u0081\u0001\u001a\u00020\u00042\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010I\u001a\u00030\u0084\u0001H\u0002J\u001d\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0086\u0001\u001a\u00020\u00042\u0007\u0010I\u001a\u00030\u0084\u0001H\u0002J\u001c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0086\u0001\u001a\u00020\u00042\u0006\u0010d\u001a\u00020\u0004H\u0002J>\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0089\u0001\u001a\u00020r2\u0017\u0010\u008a\u0001\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010w\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0003\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0011\u0010\u008d\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0014\u0010\u008e\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0015\u0010\u008f\u0001\u001a\u00020 2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0007J\u0014\u0010\u0092\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0011\u0010\u0093\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0002J\u0013\u0010\u0094\u0001\u001a\u00020 2\b\u0010F\u001a\u0004\u0018\u00010\u0004H\u0007J\u0019\u0010\u0094\u0001\u001a\u00020 2\u000e\u0010\u0095\u0001\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u0096\u0001H\u0007J\u0014\u0010\u0097\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0018\u0010\u0098\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040\u0099\u00012\u0006\u0010M\u001a\u00020NH\u0007J\u0017\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00040L2\u0006\u0010M\u001a\u00020NH\u0007J\u001e\u0010\u009b\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040P2\u0007\u0010\u009c\u0001\u001a\u00020\u0004H\u0007J'\u0010\u009d\u0001\u001a\u00020*2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\u0011\u0010\u009f\u0001\u001a\f\u0018\u00010 \u0001j\u0005\u0018\u0001`¡\u0001H\u0007J\u001f\u0010\u009d\u0001\u001a\u00020*2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010\u009d\u0001\u001a\u00020*2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010£\u0001\u001a\u0005\u0018\u00010¤\u0001H\u0007J\"\u0010¥\u0001\u001a\u00020\u00042\u0017\u0010¦\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040PH\u0007J\u0013\u0010§\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010d\u001a\u00020\u0004H\u0007J\u0011\u0010¨\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0014\u0010©\u0001\u001a\u00020>2\t\u0010ª\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010«\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\u0011\u0010¬\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010LH\u0007J&\u0010\u00ad\u0001\u001a\u00020 2\u0006\u0010c\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010®\u0001\u001a\u0004\u0018\u00010\u0001H\u0007J&\u0010¯\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010®\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010°\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J!\u0010±\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010P2\b\u0010²\u0001\u001a\u00030³\u0001H\u0007J\u0013\u0010´\u0001\u001a\u00020\u00042\b\u0010T\u001a\u0004\u0018\u00010UH\u0007J%\u0010µ\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010P2\b\u0010²\u0001\u001a\u00030³\u0001H\u0007J\t\u0010¶\u0001\u001a\u00020*H\u0002J\t\u0010·\u0001\u001a\u00020\u0006H\u0002J\u0012\u0010¸\u0001\u001a\u00020*2\u0007\u0010¹\u0001\u001a\u000200H\u0002J\u0012\u0010º\u0001\u001a\u00020*2\u0007\u0010¹\u0001\u001a\u000200H\u0002J\t\u0010»\u0001\u001a\u00020*H\u0002J\t\u0010¼\u0001\u001a\u00020*H\u0002J\u0015\u0010½\u0001\u001a\u00020*2\n\u0010¾\u0001\u001a\u0005\u0018\u00010¿\u0001H\u0007J\u001f\u0010À\u0001\u001a\u00020\u00042\t\u0010Á\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Â\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J6\u0010Ã\u0001\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010\u00042\u0007\u0010Ä\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u001a\u0010Å\u0001\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0007\u0010¹\u0001\u001a\u000200H\u0007J\u0014\u0010Æ\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010I\u001a\u00030\u0084\u0001H\u0007J\u0013\u0010Æ\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010d\u001a\u00020\u0004H\u0007J\u0016\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010I\u001a\u0005\u0018\u00010\u0084\u0001H\u0007J\u0015\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010d\u001a\u0004\u0018\u00010\u0004H\u0007J\u001d\u0010È\u0001\u001a\u00020 2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010É\u0001\u001a\u0004\u0018\u00010N2\t\u0010Á\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Ê\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010Ë\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Á\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Ê\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J*\u0010Ì\u0001\u001a\u00020*2\b\u0010²\u0001\u001a\u00030³\u00012\u0015\u0010¦\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010PH\u0007J.\u0010Í\u0001\u001a\u00020*2\b\u0010²\u0001\u001a\u00030³\u00012\u0019\u0010¦\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010PH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u00168G¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8G¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u00020 8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0002\u001a\u0004\b\u001f\u0010\"R\u0011\u0010#\u001a\u00020 8G¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u000e\u0010$\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010%\u001a\u0004\u0018\u00010\u00168G¢\u0006\u0006\u001a\u0004\b&\u0010\u0018R\u000e\u0010'\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Ï\u0001"}, d2 = {"Lcom/facebook/internal/Utility;", "", "()V", "ARC_DEVICE_PATTERN", "", "DEFAULT_STREAM_BUFFER_SIZE", "", "EXTRA_APP_EVENTS_INFO_FORMAT_VERSION", "FACEBOOK_PROFILE_FIELDS", "HASH_ALGORITHM_MD5", "HASH_ALGORITHM_SHA1", "HASH_ALGORITHM_SHA256", "INSTAGRAM_PROFILE_FIELDS", "LOG_TAG", "NO_CARRIER", "REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS", "URL_SCHEME", "UTF8", "availableExternalStorageGB", "", "carrierName", "currentLocale", "Ljava/util/Locale;", "getCurrentLocale", "()Ljava/util/Locale;", "dataProcessingOptions", "Lorg/json/JSONObject;", "getDataProcessingOptions", "()Lorg/json/JSONObject;", "deviceTimeZoneName", "deviceTimezoneAbbreviation", "isAutoAppLinkSetup", "", "isAutoAppLinkSetup$annotations", "()Z", "isDataProcessingRestricted", "numCPUCores", "resourceLocale", "getResourceLocale", "timestampOfLastCheck", "totalExternalStorageGB", "appendAnonIdUnderCompliance", "", NativeProtocol.WEB_DIALOG_PARAMS, "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", "context", "Landroid/content/Context;", "appendAttributionIdUnderCompliance", "areObjectsEqual", ExifInterface.GPS_DIRECTION_TRUE, "a", "b", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "awaitGetGraphMeRequestWithCache", "accessToken", "buildUri", "Landroid/net/Uri;", "authority", TCConstants.VIDEO_RECORD_VIDEPATH, PushConstants.PARAMS, "Landroid/os/Bundle;", "clearCookiesForDomain", "domain", "clearFacebookCookies", "closeQuietly", "closeable", "Ljava/io/Closeable;", "coerceValueIfNullOrEmpty", NotifyType.SOUND, "valueIfNullOrEmpty", "convertBytesToGB", "bytes", "", "convertJSONArrayToList", "", "jsonArray", "Lorg/json/JSONArray;", "convertJSONObjectToHashMap", "", "jsonObject", "convertJSONObjectToStringMap", "copyAndCloseInputStream", "inputStream", "Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "disconnectQuietly", "connection", "Ljava/net/URLConnection;", "externalStorageExists", "generateRandomString", "length", "getActivityName", "getAppName", "getAppVersion", "getBundleLongAsDate", "Ljava/util/Date;", "bundle", "key", "dateBase", "getContentSize", "contentUri", "getCurrentTokenDomainWithDefault", "getGraphDomainFromTokenDomain", "tokenGraphDomain", "getGraphMeRequestWithCache", "Lcom/facebook/GraphRequest;", "getGraphMeRequestWithCacheAsync", "callback", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "getMetadataApplicationId", "getMethodQuietly", "Ljava/lang/reflect/Method;", "clazz", "Ljava/lang/Class;", "methodName", "parameterTypes", "", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getProfileFieldsForGraphDomain", "graphDomain", "getStringPropertyAsJSON", "nonJSONPropertyKey", "getUriString", ShareConstants.MEDIA_URI, "hashBytes", "hash", "Ljava/security/MessageDigest;", "", "hashWithAlgorithm", "algorithm", "invokeMethodQuietly", "receiver", PushConstants.MZ_PUSH_MESSAGE_METHOD, "args", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "isAutofillAvailable", "isChromeOS", "isContentUri", "isCurrentAccessToken", JThirdPlatFormInterface.KEY_TOKEN, "Lcom/facebook/AccessToken;", "isFileUri", "isGooglePlayServicesAvailable", "isNullOrEmpty", com.huawei.hms.opendevice.c.f27627a, "", "isWebUri", "jsonArrayToSet", "", "jsonArrayToStringList", "jsonStrToMap", "str", "logd", "tag", com.huawei.hms.push.e.f27721a, "Ljava/lang/Exception;", "Lkotlin/Exception;", "msg", "t", "", "mapToJsonStr", "map", "md5hash", "mustFixWindowParamsForAutofill", "parseUrlQueryString", "queryString", "putCommaSeparatedStringList", "list", "putJSONValueInBundle", "value", "putNonEmptyString", "putUri", "readNonnullStringMapFromParcel", "parcel", "Landroid/os/Parcel;", "readStreamToString", "readStringMapFromParcel", "refreshAvailableExternalStorage", "refreshBestGuessNumberOfCPUCores", "refreshCarrierName", "appContext", "refreshPeriodicExtendedDeviceInfo", "refreshTimezone", "refreshTotalExternalStorage", "runOnNonUiThread", "runnable", "Ljava/lang/Runnable;", "safeGetStringFromResponse", "response", "propertyName", "setAppEventAttributionParameters", "limitEventUsage", "setAppEventExtendedDeviceInfoParameters", "sha1hash", "sha256hash", "stringsEqualOrEmpty", "tryGetJSONArrayFromResponse", "propertyKey", "tryGetJSONObjectFromResponse", "writeNonnullStringMapToParcel", "writeStringMapToParcel", "GraphMeRequestWithCacheCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Utility {
    @NotNull
    private static final String ARC_DEVICE_PATTERN = ".+_cheets|cheets_.+";
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    @NotNull
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a2";
    @NotNull
    private static final String FACEBOOK_PROFILE_FIELDS = "id,name,first_name,middle_name,last_name";
    @NotNull
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    @NotNull
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    @NotNull
    private static final String HASH_ALGORITHM_SHA256 = "SHA-256";
    @NotNull
    private static final String INSTAGRAM_PROFILE_FIELDS = "id,name,profile_picture";
    @NotNull
    public static final String LOG_TAG = "FacebookSDK";
    private static final int REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS = 1800000;
    @NotNull
    private static final String URL_SCHEME = "https";
    @NotNull
    private static final String UTF8 = "UTF-8";
    private static int numCPUCores;
    @NotNull
    public static final Utility INSTANCE = new Utility();
    private static long timestampOfLastCheck = -1;
    private static long totalExternalStorageGB = -1;
    private static long availableExternalStorageGB = -1;
    @NotNull
    private static String deviceTimezoneAbbreviation = "";
    @NotNull
    private static String deviceTimeZoneName = "";
    @NotNull
    private static final String NO_CARRIER = "NoCarrier";
    @NotNull
    private static String carrierName = NO_CARRIER;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", Contants.USER_INFO, "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface GraphMeRequestWithCacheCallback {
        void onFailure(@Nullable FacebookException facebookException);

        void onSuccess(@Nullable JSONObject jSONObject);
    }

    private Utility() {
    }

    private final void appendAnonIdUnderCompliance(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String str, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && isGooglePlayServicesAvailable(context)) {
            if (attributionIdentifiers.isTrackingLimited()) {
                return;
            }
            jSONObject.put("anon_id", str);
            return;
        }
        jSONObject.put("anon_id", str);
    }

    private final void appendAttributionIdUnderCompliance(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && isGooglePlayServicesAvailable(context)) {
            if (attributionIdentifiers.isTrackingLimited()) {
                return;
            }
            jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
            return;
        }
        jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
    }

    @JvmStatic
    public static final <T> boolean areObjectsEqual(@Nullable T t10, @Nullable T t11) {
        return t10 == null ? t11 == null : Intrinsics.areEqual(t10, t11);
    }

    @JvmStatic
    @Nullable
    public static final JSONObject awaitGetGraphMeRequestWithCache(@NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        ProfileInformationCache profileInformationCache = ProfileInformationCache.INSTANCE;
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(accessToken);
        if (profileInformation != null) {
            return profileInformation;
        }
        GraphResponse executeAndWait = INSTANCE.getGraphMeRequestWithCache(accessToken).executeAndWait();
        if (executeAndWait.getError() != null) {
            return null;
        }
        return executeAndWait.getJsonObject();
    }

    @JvmStatic
    @NotNull
    public static final Uri buildUri(@Nullable String str, @Nullable String str2, @Nullable Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }

    private final void clearCookiesForDomain(Context context, String str) {
        List split$default;
        List split$default2;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        split$default = StringsKt__StringsKt.split$default((CharSequence) cookie, new String[]{";"}, false, 0, 6, (Object) null);
        Object[] array = split$default.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        int length = strArr.length;
        int i9 = 0;
        while (i9 < length) {
            String str2 = strArr[i9];
            i9++;
            split$default2 = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, (Object) null);
            Object[] array2 = split$default2.toArray(new String[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr2 = (String[]) array2;
            if (strArr2.length > 0) {
                String str3 = strArr2[0];
                int length2 = str3.length() - 1;
                int i10 = 0;
                boolean z10 = false;
                while (i10 <= length2) {
                    boolean z11 = Intrinsics.compare((int) str3.charAt(!z10 ? i10 : length2), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        }
                        length2--;
                    } else if (z11) {
                        i10++;
                    } else {
                        z10 = true;
                    }
                }
                cookieManager.setCookie(str, Intrinsics.stringPlus(str3.subSequence(i10, length2 + 1).toString(), "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"));
            }
        }
        cookieManager.removeExpiredCookie();
    }

    @JvmStatic
    public static final void clearFacebookCookies(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Utility utility = INSTANCE;
            utility.clearCookiesForDomain(context, FacebookSdk.FACEBOOK_COM);
            utility.clearCookiesForDomain(context, ".facebook.com");
            utility.clearCookiesForDomain(context, "https://facebook.com");
            utility.clearCookiesForDomain(context, "https://.facebook.com");
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @JvmStatic
    @Nullable
    public static final String coerceValueIfNullOrEmpty(@Nullable String str, @Nullable String str2) {
        return isNullOrEmpty(str) ? str2 : str;
    }

    private final long convertBytesToGB(double d10) {
        return Math.round(d10 / 1.073741824E9d);
    }

    @JvmStatic
    @NotNull
    public static final List<String> convertJSONArrayToList(@NotNull JSONArray jsonArray) {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        try {
            ArrayList arrayList = new ArrayList();
            int i9 = 0;
            int length = jsonArray.length();
            if (length <= 0) {
                return arrayList;
            }
            while (true) {
                int i10 = i9 + 1;
                String string = jsonArray.getString(i9);
                Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                arrayList.add(string);
                if (i10 >= length) {
                    return arrayList;
                }
                i9 = i10;
            }
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    @JvmStatic
    @NotNull
    public static final Map<String, Object> convertJSONObjectToHashMap(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        JSONArray names = jsonObject.names();
        if (names == null) {
            return hashMap;
        }
        int i9 = 0;
        int length = names.length();
        if (length > 0) {
            while (true) {
                int i10 = i9 + 1;
                try {
                    String string = names.getString(i9);
                    Intrinsics.checkNotNullExpressionValue(string, "keys.getString(i)");
                    Object value = jsonObject.get(string);
                    if (value instanceof JSONObject) {
                        value = convertJSONObjectToHashMap((JSONObject) value);
                    }
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    hashMap.put(string, value);
                } catch (JSONException unused) {
                }
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return hashMap;
    }

    @JvmStatic
    @NotNull
    public static final Map<String, String> convertJSONObjectToStringMap(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            String optString = jsonObject.optString(key);
            if (optString != null) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                hashMap.put(key, optString);
            }
        }
        return hashMap;
    }

    @JvmStatic
    public static final int copyAndCloseInputStream(@Nullable InputStream inputStream, @NotNull OutputStream outputStream) throws IOException {
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[8192];
                int i9 = 0;
                while (true) {
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i9 += read;
                }
                bufferedInputStream2.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                return i9;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @JvmStatic
    public static final void disconnectQuietly(@Nullable URLConnection uRLConnection) {
        if (uRLConnection == null || !(uRLConnection instanceof HttpURLConnection)) {
            return;
        }
        ((HttpURLConnection) uRLConnection).disconnect();
    }

    private final boolean externalStorageExists() {
        return Intrinsics.areEqual("mounted", Environment.getExternalStorageState());
    }

    @JvmStatic
    @NotNull
    public static final String generateRandomString(int i9) {
        String bigInteger = new BigInteger(i9 * 5, new Random()).toString(32);
        Intrinsics.checkNotNullExpressionValue(bigInteger, "BigInteger(length * 5, r).toString(32)");
        return bigInteger;
    }

    @JvmStatic
    @NotNull
    public static final String getActivityName(@Nullable Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        String simpleName = context.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "{\n      context.javaClass.simpleName\n    }");
        return simpleName;
    }

    @JvmStatic
    @NotNull
    public static final String getAppName(@NotNull Context context) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String applicationName = FacebookSdk.getApplicationName();
            if (applicationName != null) {
                return applicationName;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i9 = applicationInfo.labelRes;
            if (i9 == 0) {
                string = applicationInfo.nonLocalizedLabel.toString();
            } else {
                string = context.getString(i9);
                Intrinsics.checkNotNullExpressionValue(string, "context.getString(stringId)");
            }
            return string;
        } catch (Exception unused) {
            return "";
        }
    }

    @JvmStatic
    @Nullable
    public static final String getAppVersion() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Date getBundleLongAsDate(@Nullable Bundle bundle, @Nullable String str, @NotNull Date dateBase) {
        long parseLong;
        Intrinsics.checkNotNullParameter(dateBase, "dateBase");
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Number) obj).longValue();
        } else {
            if (obj instanceof String) {
                try {
                    parseLong = Long.parseLong((String) obj);
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date(dateBase.getTime() + (parseLong * 1000));
    }

    @JvmStatic
    public static final long getContentSize(@NotNull Uri contentUri) {
        Intrinsics.checkNotNullParameter(contentUri, "contentUri");
        Cursor cursor = null;
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            cursor = FacebookSdk.getApplicationContext().getContentResolver().query(contentUri, null, null, null, null);
            if (cursor == null) {
                return 0L;
            }
            int columnIndex = cursor.getColumnIndex("_size");
            cursor.moveToFirst();
            long j10 = cursor.getLong(columnIndex);
            cursor.close();
            return j10;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    @JvmStatic
    @NotNull
    public static final Locale getCurrentLocale() {
        Locale resourceLocale = getResourceLocale();
        if (resourceLocale == null) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
            return locale;
        }
        return resourceLocale;
    }

    private final String getCurrentTokenDomainWithDefault() {
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        return (currentAccessToken == null || currentAccessToken.getGraphDomain() == null) ? AccessToken.DEFAULT_GRAPH_DOMAIN : currentAccessToken.getGraphDomain();
    }

    @JvmStatic
    @Nullable
    public static final JSONObject getDataProcessingOptions() {
        if (CrashShieldHandler.isObjectCrashing(Utility.class)) {
            return null;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String string = FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.DATA_PROCESSING_OPTIONS_PREFERENCES, 0).getString(FacebookSdk.DATA_PROCESSION_OPTIONS, null);
            if (string != null) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Utility.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getGraphDomainFromTokenDomain(@Nullable String str) {
        String replace$default;
        String replace$default2;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String facebookDomain = FacebookSdk.getFacebookDomain();
        if (str == null) {
            return facebookDomain;
        }
        if (Intrinsics.areEqual(str, FacebookSdk.GAMING)) {
            replace$default2 = StringsKt__StringsJVMKt.replace$default(facebookDomain, FacebookSdk.FACEBOOK_COM, FacebookSdk.FB_GG, false, 4, (Object) null);
            return replace$default2;
        } else if (Intrinsics.areEqual(str, FacebookSdk.INSTAGRAM)) {
            replace$default = StringsKt__StringsJVMKt.replace$default(facebookDomain, FacebookSdk.FACEBOOK_COM, FacebookSdk.INSTAGRAM_COM, false, 4, (Object) null);
            return replace$default;
        } else {
            return facebookDomain;
        }
    }

    private final GraphRequest getGraphMeRequestWithCache(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(GraphRequest.FIELDS_PARAM, getProfileFieldsForGraphDomain(getCurrentTokenDomainWithDefault()));
        bundle.putString("access_token", str);
        GraphRequest newMeRequest = GraphRequest.Companion.newMeRequest(null, null);
        newMeRequest.setParameters(bundle);
        newMeRequest.setHttpMethod(HttpMethod.GET);
        return newMeRequest;
    }

    @JvmStatic
    public static final void getGraphMeRequestWithCacheAsync(@NotNull final String accessToken, @NotNull final GraphMeRequestWithCacheCallback callback) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ProfileInformationCache profileInformationCache = ProfileInformationCache.INSTANCE;
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(accessToken);
        if (profileInformation != null) {
            callback.onSuccess(profileInformation);
            return;
        }
        GraphRequest.Callback callback2 = new GraphRequest.Callback() { // from class: com.facebook.internal.q
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                Utility.m146getGraphMeRequestWithCacheAsync$lambda3(Utility.GraphMeRequestWithCacheCallback.this, accessToken, graphResponse);
            }
        };
        GraphRequest graphMeRequestWithCache = INSTANCE.getGraphMeRequestWithCache(accessToken);
        graphMeRequestWithCache.setCallback(callback2);
        graphMeRequestWithCache.executeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getGraphMeRequestWithCacheAsync$lambda-3  reason: not valid java name */
    public static final void m146getGraphMeRequestWithCacheAsync$lambda3(GraphMeRequestWithCacheCallback callback, String accessToken, GraphResponse response) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getError() != null) {
            callback.onFailure(response.getError().getException());
            return;
        }
        ProfileInformationCache profileInformationCache = ProfileInformationCache.INSTANCE;
        JSONObject jsonObject = response.getJsonObject();
        if (jsonObject != null) {
            ProfileInformationCache.putProfileInformation(accessToken, jsonObject);
            callback.onSuccess(response.getJsonObject());
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @JvmStatic
    @NotNull
    public static final String getMetadataApplicationId(@Nullable Context context) {
        Validate validate = Validate.INSTANCE;
        Validate.notNull(context, "context");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.getApplicationId();
    }

    @JvmStatic
    @Nullable
    public static final Method getMethodQuietly(@NotNull Class<?> clazz, @NotNull String methodName, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            return clazz.getMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private final String getProfileFieldsForGraphDomain(String str) {
        return Intrinsics.areEqual(str, FacebookSdk.INSTAGRAM) ? INSTAGRAM_PROFILE_FIELDS : FACEBOOK_PROFILE_FIELDS;
    }

    @JvmStatic
    @Nullable
    public static final Locale getResourceLocale() {
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            return FacebookSdk.getApplicationContext().getResources().getConfiguration().locale;
        } catch (Exception unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Object getStringPropertyAsJSON(@NotNull JSONObject jsonObject, @Nullable String str, @Nullable String str2) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Object opt = jsonObject.opt(str);
        if (opt != null && (opt instanceof String)) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt == null || (opt instanceof JSONObject) || (opt instanceof JSONArray)) {
            return opt;
        }
        if (str2 != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(str2, opt);
            return jSONObject;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
    }

    @JvmStatic
    @Nullable
    public static final String getUriString(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    private final String hashBytes(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb2 = new StringBuilder();
        Intrinsics.checkNotNullExpressionValue(digest, "digest");
        int length = digest.length;
        int i9 = 0;
        while (i9 < length) {
            byte b10 = digest[i9];
            i9++;
            sb2.append(Integer.toHexString((b10 >> 4) & 15));
            sb2.append(Integer.toHexString((b10 >> 0) & 15));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "builder.toString()");
        return sb3;
    }

    private final String hashWithAlgorithm(String str, String str2) {
        Charset charset = Charsets.UTF_8;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str2.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return hashWithAlgorithm(str, bytes);
    }

    @JvmStatic
    @Nullable
    public static final Object invokeMethodQuietly(@Nullable Object obj, @NotNull Method method, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            return method.invoke(obj, Arrays.copyOf(args, args.length));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static final boolean isAutoAppLinkSetup() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{FacebookSdk.getApplicationId()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
            intent.setData(Uri.parse(format));
            Context applicationContext = FacebookSdk.getApplicationContext();
            PackageManager packageManager = applicationContext.getPackageManager();
            String packageName = applicationContext.getPackageName();
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 65536)) {
                if (Intrinsics.areEqual(packageName, resolveInfo.activityInfo.packageName)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @JvmStatic
    public static /* synthetic */ void isAutoAppLinkSetup$annotations() {
    }

    @JvmStatic
    public static final boolean isAutofillAvailable(@NotNull Context context) {
        AutofillManager autofillManager;
        Intrinsics.checkNotNullParameter(context, "context");
        return Build.VERSION.SDK_INT >= 26 && (autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class)) != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
    }

    @JvmStatic
    public static final boolean isChromeOS(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        String DEVICE = Build.DEVICE;
        if (DEVICE != null) {
            Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
            if (new Regex(ARC_DEVICE_PATTERN).matches(DEVICE)) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    public static final boolean isContentUri(@Nullable Uri uri) {
        boolean equals;
        if (uri != null) {
            equals = StringsKt__StringsJVMKt.equals("content", uri.getScheme(), true);
            if (equals) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    public static final boolean isCurrentAccessToken(@Nullable AccessToken accessToken) {
        return accessToken != null && Intrinsics.areEqual(accessToken, AccessToken.Companion.getCurrentAccessToken());
    }

    @JvmStatic
    public static final boolean isDataProcessingRestricted() {
        if (CrashShieldHandler.isObjectCrashing(Utility.class)) {
            return false;
        }
        try {
            JSONObject dataProcessingOptions = getDataProcessingOptions();
            if (dataProcessingOptions == null) {
                return false;
            }
            try {
                JSONArray jSONArray = dataProcessingOptions.getJSONArray(FacebookSdk.DATA_PROCESSION_OPTIONS);
                int length = jSONArray.length();
                if (length > 0) {
                    int i9 = 0;
                    while (true) {
                        int i10 = i9 + 1;
                        String string = jSONArray.getString(i9);
                        Intrinsics.checkNotNullExpressionValue(string, "options.getString(i)");
                        String lowerCase = string.toLowerCase();
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
                        if (Intrinsics.areEqual(lowerCase, "ldu")) {
                            return true;
                        }
                        if (i10 >= length) {
                            break;
                        }
                        i9 = i10;
                    }
                }
            } catch (Exception unused) {
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Utility.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean isFileUri(@Nullable Uri uri) {
        boolean equals;
        if (uri != null) {
            equals = StringsKt__StringsJVMKt.equals(ShareInternalUtility.STAGING_PARAM, uri.getScheme(), true);
            if (equals) {
                return true;
            }
        }
        return false;
    }

    private final boolean isGooglePlayServicesAvailable(Context context) {
        Method methodQuietly = getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (methodQuietly == null) {
            return false;
        }
        Object invokeMethodQuietly = invokeMethodQuietly(null, methodQuietly, context);
        return (invokeMethodQuietly instanceof Integer) && Intrinsics.areEqual(invokeMethodQuietly, (Object) 0);
    }

    @JvmStatic
    public static final boolean isNullOrEmpty(@Nullable Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    @JvmStatic
    public static final boolean isWebUri(@Nullable Uri uri) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        if (uri != null) {
            equals = StringsKt__StringsJVMKt.equals("http", uri.getScheme(), true);
            if (equals) {
                return true;
            }
            equals2 = StringsKt__StringsJVMKt.equals("https", uri.getScheme(), true);
            if (equals2) {
                return true;
            }
            equals3 = StringsKt__StringsJVMKt.equals("fbstaging", uri.getScheme(), true);
            if (equals3) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    @NotNull
    public static final Set<String> jsonArrayToSet(@NotNull JSONArray jsonArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        HashSet hashSet = new HashSet();
        int length = jsonArray.length();
        if (length > 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                String string = jsonArray.getString(i9);
                Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                hashSet.add(string);
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return hashSet;
    }

    @JvmStatic
    @NotNull
    public static final List<String> jsonArrayToStringList(@NotNull JSONArray jsonArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jsonArray.length();
        if (length > 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                arrayList.add(jsonArray.getString(i9));
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return arrayList;
    }

    @JvmStatic
    @NotNull
    public static final Map<String, String> jsonStrToMap(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                Intrinsics.checkNotNullExpressionValue(key, "key");
                String string = jSONObject.getString(key);
                Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(key)");
                hashMap.put(key, string);
            }
            return hashMap;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    @JvmStatic
    public static final void logd(@Nullable String str, @Nullable Exception exc) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isDebugEnabled() || str == null || exc == null) {
            return;
        }
        Log.d(str, exc.getClass().getSimpleName() + ": " + ((Object) exc.getMessage()));
    }

    @JvmStatic
    @NotNull
    public static final String mapToJsonStr(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        String str = "";
        if (!map.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str = jSONObject.toString();
            } catch (JSONException unused) {
            }
            Intrinsics.checkNotNullExpressionValue(str, "{\n      try {\n        val jsonObject = JSONObject()\n        for ((key, value) in map) {\n          jsonObject.put(key, value)\n        }\n        jsonObject.toString()\n      } catch (_e: JSONException) {\n        \"\"\n      }\n    }");
        }
        return str;
    }

    @JvmStatic
    @Nullable
    public static final String md5hash(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_MD5, key);
    }

    @JvmStatic
    public static final boolean mustFixWindowParamsForAutofill(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return isAutofillAvailable(context);
    }

    @JvmStatic
    @NotNull
    public static final Bundle parseUrlQueryString(@Nullable String str) {
        List split$default;
        List split$default2;
        Bundle bundle = new Bundle();
        if (!isNullOrEmpty(str)) {
            if (str != null) {
                split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6, (Object) null);
                Object[] array = split$default.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr = (String[]) array;
                int length = strArr.length;
                int i9 = 0;
                while (i9 < length) {
                    String str2 = strArr[i9];
                    i9++;
                    split$default2 = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, (Object) null);
                    Object[] array2 = split$default2.toArray(new String[0]);
                    Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                    String[] strArr2 = (String[]) array2;
                    try {
                        if (strArr2.length == 2) {
                            bundle.putString(URLDecoder.decode(strArr2[0], "UTF-8"), URLDecoder.decode(strArr2[1], "UTF-8"));
                        } else if (strArr2.length == 1) {
                            bundle.putString(URLDecoder.decode(strArr2[0], "UTF-8"), "");
                        }
                    } catch (UnsupportedEncodingException e10) {
                        logd(LOG_TAG, e10);
                    }
                }
            } else {
                throw new IllegalStateException("Required value was null.".toString());
            }
        }
        return bundle;
    }

    @JvmStatic
    public static final void putCommaSeparatedStringList(@NotNull Bundle b10, @Nullable String str, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(b10, "b");
        if (list != null) {
            b10.putString(str, TextUtils.join(",", list));
        }
    }

    @JvmStatic
    public static final boolean putJSONValueInBundle(@NotNull Bundle bundle, @Nullable String str, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (obj == null) {
            bundle.remove(str);
            return true;
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Number) obj).doubleValue());
            return true;
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Number) obj).intValue());
            return true;
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Number) obj).longValue());
            return true;
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, ((JSONArray) obj).toString());
            return true;
        } else if (obj instanceof JSONObject) {
            bundle.putString(str, ((JSONObject) obj).toString());
            return true;
        } else {
            return false;
        }
    }

    @JvmStatic
    public static final void putNonEmptyString(@NotNull Bundle b10, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(b10, "b");
        if (isNullOrEmpty(str2)) {
            return;
        }
        b10.putString(str, str2);
    }

    @JvmStatic
    public static final void putUri(@NotNull Bundle b10, @Nullable String str, @Nullable Uri uri) {
        Intrinsics.checkNotNullParameter(b10, "b");
        if (uri != null) {
            putNonEmptyString(b10, str, uri.toString());
        }
    }

    @JvmStatic
    @Nullable
    public static final Map<String, String> readNonnullStringMapFromParcel(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        int i9 = 0;
        if (readInt > 0) {
            do {
                i9++;
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                if (readString != null && readString2 != null) {
                    hashMap.put(readString, readString2);
                    continue;
                }
            } while (i9 < readInt);
            return hashMap;
        }
        return hashMap;
    }

    @JvmStatic
    @NotNull
    public static final String readStreamToString(@Nullable InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        Throwable th2;
        InputStreamReader inputStreamReader;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb2.append(cArr, 0, read);
                        } else {
                            String sb3 = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(sb3, "{\n      bufferedInputStream = BufferedInputStream(inputStream)\n      reader = InputStreamReader(bufferedInputStream)\n      val stringBuilder = StringBuilder()\n      val bufferSize = 1024 * 2\n      val buffer = CharArray(bufferSize)\n      var n = 0\n      while (reader.read(buffer).also { n = it } != -1) {\n        stringBuilder.append(buffer, 0, n)\n      }\n      stringBuilder.toString()\n    }");
                            closeQuietly(bufferedInputStream);
                            closeQuietly(inputStreamReader);
                            return sb3;
                        }
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    closeQuietly(bufferedInputStream);
                    closeQuietly(inputStreamReader);
                    throw th2;
                }
            } catch (Throwable th4) {
                th2 = th4;
                inputStreamReader = null;
            }
        } catch (Throwable th5) {
            bufferedInputStream = null;
            th2 = th5;
            inputStreamReader = null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Map<String, String> readStringMapFromParcel(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        int i9 = 0;
        if (readInt > 0) {
            do {
                i9++;
                hashMap.put(parcel.readString(), parcel.readString());
            } while (i9 < readInt);
            return hashMap;
        }
        return hashMap;
    }

    private final void refreshAvailableExternalStorage() {
        try {
            if (externalStorageExists()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                availableExternalStorageGB = statFs.getAvailableBlocks() * statFs.getBlockSize();
            }
            availableExternalStorageGB = convertBytesToGB(availableExternalStorageGB);
        } catch (Exception unused) {
        }
    }

    private final int refreshBestGuessNumberOfCPUCores() {
        int i9 = numCPUCores;
        if (i9 > 0) {
            return i9;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.r
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    boolean m147refreshBestGuessNumberOfCPUCores$lambda4;
                    m147refreshBestGuessNumberOfCPUCores$lambda4 = Utility.m147refreshBestGuessNumberOfCPUCores$lambda4(file, str);
                    return m147refreshBestGuessNumberOfCPUCores$lambda4;
                }
            });
            if (listFiles != null) {
                numCPUCores = listFiles.length;
            }
        } catch (Exception unused) {
        }
        if (numCPUCores <= 0) {
            numCPUCores = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return numCPUCores;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: refreshBestGuessNumberOfCPUCores$lambda-4  reason: not valid java name */
    public static final boolean m147refreshBestGuessNumberOfCPUCores$lambda4(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }

    private final void refreshCarrierName(Context context) {
        if (Intrinsics.areEqual(carrierName, NO_CARRIER)) {
            try {
                Object systemService = context.getSystemService("phone");
                if (systemService != null) {
                    String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
                    Intrinsics.checkNotNullExpressionValue(networkOperatorName, "telephonyManager.networkOperatorName");
                    carrierName = networkOperatorName;
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            } catch (Exception unused) {
            }
        }
    }

    private final void refreshPeriodicExtendedDeviceInfo(Context context) {
        if (timestampOfLastCheck == -1 || System.currentTimeMillis() - timestampOfLastCheck >= 1800000) {
            timestampOfLastCheck = System.currentTimeMillis();
            refreshTimezone();
            refreshCarrierName(context);
            refreshTotalExternalStorage();
            refreshAvailableExternalStorage();
        }
    }

    private final void refreshTimezone() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            String displayName = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            Intrinsics.checkNotNullExpressionValue(displayName, "tz.getDisplayName(tz.inDaylightTime(Date()), TimeZone.SHORT)");
            deviceTimezoneAbbreviation = displayName;
            String id2 = timeZone.getID();
            Intrinsics.checkNotNullExpressionValue(id2, "tz.id");
            deviceTimeZoneName = id2;
        } catch (AssertionError | Exception unused) {
        }
    }

    private final void refreshTotalExternalStorage() {
        try {
            if (externalStorageExists()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                totalExternalStorageGB = statFs.getBlockCount() * statFs.getBlockSize();
            }
            totalExternalStorageGB = convertBytesToGB(totalExternalStorageGB);
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void runOnNonUiThread(@Nullable Runnable runnable) {
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(runnable);
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    @NotNull
    public static final String safeGetStringFromResponse(@Nullable JSONObject jSONObject, @Nullable String str) {
        if (jSONObject != null) {
            String optString = jSONObject.optString(str, "");
            Intrinsics.checkNotNullExpressionValue(optString, "response.optString(propertyName, \"\")");
            return optString;
        }
        return "";
    }

    @JvmStatic
    public static final void setAppEventAttributionParameters(@NotNull JSONObject params, @Nullable AttributionIdentifiers attributionIdentifiers, @Nullable String str, boolean z10, @NotNull Context context) throws JSONException {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(context, "context");
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Feature feature = FeatureManager.Feature.ServiceUpdateCompliance;
        if (!FeatureManager.isEnabled(feature)) {
            params.put("anon_id", str);
        }
        params.put("application_tracking_enabled", !z10);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        params.put("advertiser_id_collection_enabled", FacebookSdk.getAdvertiserIDCollectionEnabled());
        if (attributionIdentifiers != null) {
            if (FeatureManager.isEnabled(feature)) {
                INSTANCE.appendAnonIdUnderCompliance(params, attributionIdentifiers, str, context);
            }
            if (attributionIdentifiers.getAttributionId() != null) {
                if (FeatureManager.isEnabled(feature)) {
                    INSTANCE.appendAttributionIdUnderCompliance(params, attributionIdentifiers, context);
                } else {
                    params.put("attribution", attributionIdentifiers.getAttributionId());
                }
            }
            if (attributionIdentifiers.getAndroidAdvertiserId() != null) {
                params.put("advertiser_id", attributionIdentifiers.getAndroidAdvertiserId());
                params.put("advertiser_tracking_enabled", !attributionIdentifiers.isTrackingLimited());
            }
            if (!attributionIdentifiers.isTrackingLimited()) {
                UserDataStore userDataStore = UserDataStore.INSTANCE;
                String allHashedUserData = UserDataStore.getAllHashedUserData();
                if (!(allHashedUserData.length() == 0)) {
                    params.put("ud", allHashedUserData);
                }
            }
            if (attributionIdentifiers.getAndroidInstallerPackage() != null) {
                params.put("installer_package", attributionIdentifiers.getAndroidInstallerPackage());
            }
        }
    }

    @JvmStatic
    public static final void setAppEventExtendedDeviceInfoParameters(@NotNull JSONObject params, @NotNull Context appContext) throws JSONException {
        String str;
        Locale locale;
        int i9;
        Display display;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        JSONArray jSONArray = new JSONArray();
        Utility utility = INSTANCE;
        jSONArray.put(EXTRA_APP_EVENTS_INFO_FORMAT_VERSION);
        utility.refreshPeriodicExtendedDeviceInfo(appContext);
        String packageName = appContext.getPackageName();
        int i10 = 0;
        int i11 = -1;
        try {
            packageInfo = appContext.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            str = "";
        }
        if (packageInfo == null) {
            return;
        }
        i11 = packageInfo.versionCode;
        str = packageInfo.versionName;
        jSONArray.put(packageName);
        jSONArray.put(i11);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = appContext.getResources().getConfiguration().locale;
        } catch (Exception unused2) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + '_' + ((Object) locale.getCountry()));
        jSONArray.put(deviceTimezoneAbbreviation);
        jSONArray.put(carrierName);
        double d10 = 0.0d;
        try {
            Object systemService = appContext.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
            display = null;
            DisplayManager displayManager = systemService instanceof DisplayManager ? (DisplayManager) systemService : null;
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            }
        } catch (Exception unused3) {
        }
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int i12 = displayMetrics.widthPixels;
            try {
                int i13 = displayMetrics.heightPixels;
                try {
                    d10 = displayMetrics.density;
                } catch (Exception unused4) {
                }
                i9 = i13;
                i10 = i12;
            } catch (Exception unused5) {
                i10 = i12;
            }
            jSONArray.put(i10);
            jSONArray.put(i9);
            jSONArray.put(new DecimalFormat("#.##").format(d10));
            jSONArray.put(INSTANCE.refreshBestGuessNumberOfCPUCores());
            jSONArray.put(totalExternalStorageGB);
            jSONArray.put(availableExternalStorageGB);
            jSONArray.put(deviceTimeZoneName);
            params.put(Constants.EXTINFO, jSONArray.toString());
        }
        i9 = 0;
        jSONArray.put(i10);
        jSONArray.put(i9);
        jSONArray.put(new DecimalFormat("#.##").format(d10));
        jSONArray.put(INSTANCE.refreshBestGuessNumberOfCPUCores());
        jSONArray.put(totalExternalStorageGB);
        jSONArray.put(availableExternalStorageGB);
        jSONArray.put(deviceTimeZoneName);
        params.put(Constants.EXTINFO, jSONArray.toString());
    }

    @JvmStatic
    @Nullable
    public static final String sha1hash(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA1, key);
    }

    @JvmStatic
    @Nullable
    public static final String sha256hash(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA256, str);
    }

    @JvmStatic
    public static final boolean stringsEqualOrEmpty(@Nullable String str, @Nullable String str2) {
        boolean z10 = str == null || str.length() == 0;
        boolean z11 = str2 == null || str2.length() == 0;
        if (z10 && z11) {
            return true;
        }
        if (z10 || z11) {
            return false;
        }
        return Intrinsics.areEqual(str, str2);
    }

    @JvmStatic
    @Nullable
    public static final JSONArray tryGetJSONArrayFromResponse(@Nullable JSONObject jSONObject, @Nullable String str) {
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONArray(str);
    }

    @JvmStatic
    @Nullable
    public static final JSONObject tryGetJSONObjectFromResponse(@Nullable JSONObject jSONObject, @Nullable String str) {
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONObject(str);
    }

    @JvmStatic
    public static final void writeNonnullStringMapToParcel(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    @JvmStatic
    public static final void writeStringMapToParcel(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    @JvmStatic
    @Nullable
    public static final Method getMethodQuietly(@NotNull String className, @NotNull String methodName, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            Class<?> cls = Class.forName(className);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(className)");
            return getMethodQuietly(cls, methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private final String hashWithAlgorithm(String str, byte[] bArr) {
        try {
            MessageDigest hash = MessageDigest.getInstance(str);
            Intrinsics.checkNotNullExpressionValue(hash, "hash");
            return hashBytes(hash, bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @JvmStatic
    public static final boolean isNullOrEmpty(@Nullable String str) {
        if (str != null) {
            if (!(str.length() == 0)) {
                return false;
            }
        }
        return true;
    }

    @JvmStatic
    @Nullable
    public static final String sha1hash(@NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA1, bytes);
    }

    @JvmStatic
    @Nullable
    public static final String sha256hash(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA256, bArr);
    }

    @JvmStatic
    public static final void logd(@Nullable String str, @Nullable String str2) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isDebugEnabled() || str == null || str2 == null) {
            return;
        }
        Log.d(str, str2);
    }

    @JvmStatic
    public static final void logd(@Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isDebugEnabled() || isNullOrEmpty(str)) {
            return;
        }
        Log.d(str, str2, th2);
    }
}
