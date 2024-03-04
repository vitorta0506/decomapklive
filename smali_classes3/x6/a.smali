.class public Lx6/a;
.super Lcom/guochao/faceshow/utils/BaseConfig;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = "https://fsveg.facecast.xyz/"

.field public static g:Ljava/lang/String; = "https://fsveg.facecast.xyz/"

.field public static h:Ljava/lang/String; = "https://fsveg.buzzcast.info/"

.field public static i:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const-string p1, "357b94ba92"

    .line 1
    sput-object p1, Lx6/a;->e:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "serverEnv"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "server_env"

    const/4 v0, -0x1

    .line 3
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x7d0

    .line 4
    :cond_0
    invoke-static {p0}, Lx6/a;->b(I)V

    return-void

    :cond_1
    const-string p0, "0319f4aa23"

    .line 5
    sput-object p0, Lx6/a;->e:Ljava/lang/String;

    const/16 p0, 0xfa0

    .line 6
    invoke-static {p0}, Lx6/a;->b(I)V

    return-void
.end method

.method private static b(I)V
    .locals 5

    const-string v0, "https://dhcxzil.facecast.xyz/"

    const-string v1, "https://upload.facecast.xyz/faceshow/"

    const-string v2, "https://hui-api.facecast.xyz/"

    const/16 v3, 0xbb8

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lx6/a;->i:Z

    const-string p0, "https://linshi.facecast.xyz/faceshow/"

    .line 2
    sput-object p0, Lx6/a;->a:Ljava/lang/String;

    .line 3
    sput-object v2, Lx6/a;->b:Ljava/lang/String;

    .line 4
    sput-object v1, Lx6/a;->c:Ljava/lang/String;

    const-string p0, "https://huiupload.facecast.xyz/faceshow-upload/"

    .line 5
    sput-object p0, Lx6/a;->d:Ljava/lang/String;

    .line 6
    sput-object v0, Lx6/a;->g:Ljava/lang/String;

    const-string p0, "https://huih5.buzzcast.info/"

    .line 7
    sput-object p0, Lx6/a;->f:Ljava/lang/String;

    .line 8
    sput-object p0, Lx6/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v3, 0xfa0

    if-ne p0, v3, :cond_1

    const-string p0, "https://dhcxzil.facecast.xyz/faceshow/"

    .line 9
    sput-object p0, Lx6/a;->a:Ljava/lang/String;

    const-string p0, "https://api.facecast.xyz/"

    .line 10
    sput-object p0, Lx6/a;->b:Ljava/lang/String;

    .line 11
    sput-object v1, Lx6/a;->c:Ljava/lang/String;

    const-string p0, "https://upload.facecast.xyz/faceshow-upload/"

    .line 12
    sput-object p0, Lx6/a;->d:Ljava/lang/String;

    .line 13
    sput-object v0, Lx6/a;->g:Ljava/lang/String;

    const-string p0, "https://fsveg.facecast.xyz/"

    .line 14
    sput-object p0, Lx6/a;->f:Ljava/lang/String;

    const-string p0, "https://fsveg.buzzcast.info/"

    .line 15
    sput-object p0, Lx6/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    const-string v1, "https://html5.gchao.com/"

    const-string v3, "https://fhwqdf.gchao.com/"

    const-string v4, "https://fhwqdf.gchao.com/faceshow-upload/"

    if-ne p0, v0, :cond_2

    const-string p0, "http://192.168.200.11:8083/faceshow/"

    .line 16
    sput-object p0, Lx6/a;->a:Ljava/lang/String;

    .line 17
    sput-object v2, Lx6/a;->b:Ljava/lang/String;

    const-string p0, "http://192.168.200.11:8083/upload/"

    .line 18
    sput-object p0, Lx6/a;->c:Ljava/lang/String;

    .line 19
    sput-object v4, Lx6/a;->d:Ljava/lang/String;

    .line 20
    sput-object v3, Lx6/a;->g:Ljava/lang/String;

    .line 21
    sput-object v1, Lx6/a;->f:Ljava/lang/String;

    .line 22
    sput-object v1, Lx6/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "https://fhwqdf.gchao.com/faceshow/"

    .line 23
    sput-object p0, Lx6/a;->a:Ljava/lang/String;

    const-string v0, "https://bcyfapi.gchao.com/"

    .line 24
    sput-object v0, Lx6/a;->b:Ljava/lang/String;

    .line 25
    sput-object p0, Lx6/a;->c:Ljava/lang/String;

    .line 26
    sput-object v4, Lx6/a;->d:Ljava/lang/String;

    .line 27
    sput-object v3, Lx6/a;->g:Ljava/lang/String;

    .line 28
    sput-object v1, Lx6/a;->f:Ljava/lang/String;

    .line 29
    sput-object v1, Lx6/a;->h:Ljava/lang/String;

    :goto_0
    return-void
.end method
