.class public final synthetic Lh3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Lh3/m;


# direct methods
.method public synthetic constructor <init>(Lh3/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/d;->a:Lh3/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lh3/d;->a:Lh3/m;

    check-cast p1, Lcom/google/android/exoplayer2/k1;

    invoke-static {v0, p1}, Lh3/m;->p(Lh3/m;Lcom/google/android/exoplayer2/k1;)Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
