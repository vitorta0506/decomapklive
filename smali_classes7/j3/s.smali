.class public final synthetic Lj3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# static fields
.field public static final synthetic a:Lj3/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/s;

    invoke-direct {v0}, Lj3/s;-><init>()V

    sput-object v0, Lj3/s;->a:Lj3/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lj3/r$c;->y0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
