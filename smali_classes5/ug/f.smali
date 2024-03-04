.class public final Lug/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug/f$a;,
        Lug/f$b;
    }
.end annotation


# static fields
.field public static final a:Lug/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lug/f;

    invoke-direct {v0}, Lug/f;-><init>()V

    sput-object v0, Lug/f;->a:Lug/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a([Lug/j;)Lug/k$a;
    .locals 1

    .line 1
    array-length v0, p1

    invoke-static {v0}, Lug/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lug/f$b;

    invoke-direct {v0, p1}, Lug/f$b;-><init>([Lug/j;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lug/f$a;

    invoke-direct {v0, p1}, Lug/f$a;-><init>([Lug/j;)V

    return-object v0
.end method
