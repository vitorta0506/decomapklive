.class abstract Leh/p2$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/p2$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Leh/n1;)Leh/p2$g;
    .locals 2

    const-string v0, "httpConnectionManager"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/i0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leh/i0;-><init>(Leh/n1;Leh/h1;)V

    return-object v0
.end method

.method static b(Leh/h1;)Leh/p2$g;
    .locals 2

    const-string v0, "listener"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/i0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Leh/i0;-><init>(Leh/n1;Leh/h1;)V

    return-object v0
.end method


# virtual methods
.method abstract c()Leh/n1;
.end method

.method abstract d()Leh/h1;
.end method
