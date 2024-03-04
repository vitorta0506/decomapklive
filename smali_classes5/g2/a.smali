.class public final synthetic Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r;


# static fields
.field public static final synthetic b:Lg2/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg2/a;

    invoke-direct {v0}, Lg2/a;-><init>()V

    sput-object v0, Lg2/a;->b:Lg2/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lc2/l;
    .locals 0

    invoke-static {p0, p1, p2}, Lc2/q;->a(Lc2/r;Landroid/net/Uri;Ljava/util/Map;)[Lc2/l;

    move-result-object p1

    return-object p1
.end method

.method public final b()[Lc2/l;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/b;->c()[Lc2/l;

    move-result-object v0

    return-object v0
.end method
