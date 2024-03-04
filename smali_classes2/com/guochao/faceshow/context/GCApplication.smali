.class public abstract Lcom/guochao/faceshow/context/GCApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field public static final CACHE_SIZE:I = 0x5000000

.field public static final WEB_URL:Ljava/util/regex/Pattern;

.field public static sCpuArch:Ljava/lang/String; = "32"

.field private static sGCApplication:Lcom/guochao/faceshow/context/GCApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/util/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/guochao/faceshow/context/GCApplication;->WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static app()Lcom/guochao/faceshow/context/GCApplication;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/context/GCApplication;->sGCApplication:Lcom/guochao/faceshow/context/GCApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lo/a;->d(Landroid/app/Application;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    sput-object p0, Lcom/guochao/faceshow/context/GCApplication;->sGCApplication:Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public updateLocale()V
    .locals 0

    return-void
.end method
