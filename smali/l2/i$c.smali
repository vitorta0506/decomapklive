.class final Ll2/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll2/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll2/i$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc2/m;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()Lc2/b0;
    .locals 3

    new-instance v0, Lc2/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lc2/b0$b;-><init>(J)V

    return-object v0
.end method

.method public c(J)V
    .locals 0

    return-void
.end method
