.class public final synthetic Lcom/google/android/exoplayer2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/n0;->a:I

    iput p2, p0, Lcom/google/android/exoplayer2/n0;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/n0;->a:I

    iget v1, p0, Lcom/google/android/exoplayer2/n0;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/l2$d;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/v0;->k0(IILcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method
