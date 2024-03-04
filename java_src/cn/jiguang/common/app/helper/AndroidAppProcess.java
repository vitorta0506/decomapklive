package cn.jiguang.common.app.helper;

import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class AndroidAppProcess extends AndroidProcess {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f2528c = new File("/dev/cpuctl/tasks").exists();

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f2529d = Pattern.compile("^([A-Za-z]{1}[A-Za-z0-9_]*[\\.|:])*[A-Za-z][A-Za-z0-9_]*$");
}
