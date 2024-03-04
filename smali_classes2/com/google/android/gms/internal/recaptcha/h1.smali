.class public final Lcom/google/android/gms/internal/recaptcha/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e1;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/h1;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/recaptcha/zzvj;Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/z0;)Lcom/google/android/gms/internal/recaptcha/zzpy;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/a1;,
            Lcom/google/android/gms/internal/recaptcha/d1;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzvj;->zza:Lcom/google/android/gms/internal/recaptcha/zzvj;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzvj;->zza()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/recaptcha/a1;-><init>(I)V

    throw p1

    .line 4
    :pswitch_0
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/recaptcha/z0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/yj;

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    const/4 p1, 0x7

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    .line 10
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/h1;->b(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/f1;->a(I)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_2
    invoke-static {p1}, Lg4/c;->a(Landroid/content/Context;)Lg4/b;

    move-result-object p0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    if-eqz p0, :cond_2

    const/16 v3, 0x1000

    .line 13
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lg4/b;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/v8;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/v8;-><init>()V

    .line 15
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    .line 16
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, p0, v1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/z9;->a()Lcom/google/android/gms/internal/recaptcha/w9;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/recaptcha/w9;->b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/recaptcha/v9;->e()[B

    move-result-object v5

    .line 20
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 21
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/f1;->b([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/recaptcha/v8;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/v8;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/v8;->e()Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object p0

    .line 24
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/recaptcha/z0;->c(Lcom/google/android/gms/internal/recaptcha/zzkn;)Lcom/google/android/gms/internal/recaptcha/yj;

    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzm(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/h1;->a:Ljava/lang/String;

    .line 28
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    .line 30
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    .line 32
    :pswitch_3
    invoke-static {p1}, Lg4/c;->a(Landroid/content/Context;)Lg4/b;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    if-eqz p0, :cond_4

    .line 33
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lg4/b;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_3

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    goto :goto_1

    .line 35
    :cond_3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long p0, p0

    :goto_1
    const/16 p2, 0x8

    .line 36
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzm(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 39
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/h1;->a:Ljava/lang/String;

    .line 40
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    .line 41
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    .line 42
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    .line 43
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    :pswitch_4
    const-string p0, "activity"

    .line 44
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_5

    .line 45
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 47
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide p0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v0, p0

    long-to-int p0, v0

    .line 48
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/recaptcha/z0;->d(I)Lcom/google/android/gms/internal/recaptcha/yj;

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/f1;->a(I)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    .line 51
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    :pswitch_5
    const-string p0, "audio"

    .line 52
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_6

    .line 53
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    .line 54
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    div-int/2addr p1, p0

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/f1;->a(I)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    .line 56
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    const/4 p1, 0x2

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    .line 58
    :pswitch_6
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 59
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "level"

    const/4 v0, -0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    const-string v1, "scale"

    .line 62
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 63
    div-int/2addr p1, p0

    .line 64
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/z0;->b(I)Lcom/google/android/gms/internal/recaptcha/yj;

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/f1;->a(I)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0

    .line 66
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    const/4 p1, 0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/ContentResolver;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/d1;
        }
    .end annotation

    :try_start_0
    const-string v0, "screen_brightness"

    .line 1
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/h1;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/d1;

    const/4 v0, 0x6

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/d1;-><init>(I)V

    throw p0
.end method
