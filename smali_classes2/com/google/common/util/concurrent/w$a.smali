.class public abstract Lcom/google/common/util/concurrent/w$a;
.super Lcom/google/common/util/concurrent/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/w<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/w;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/d0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$a;->a:Lcom/google/common/util/concurrent/d0;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$a;->y0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic w0()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$a;->y0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    return-object v0
.end method

.method protected final y0()Lcom/google/common/util/concurrent/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$a;->a:Lcom/google/common/util/concurrent/d0;

    return-object v0
.end method
