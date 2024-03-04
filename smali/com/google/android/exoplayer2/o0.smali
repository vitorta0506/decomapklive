.class public final synthetic Lcom/google/android/exoplayer2/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/exoplayer2/l2$e;

.field public final synthetic c:Lcom/google/android/exoplayer2/l2$e;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/o0;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/o0;->b:Lcom/google/android/exoplayer2/l2$e;

    iput-object p3, p0, Lcom/google/android/exoplayer2/o0;->c:Lcom/google/android/exoplayer2/l2$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/o0;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/o0;->b:Lcom/google/android/exoplayer2/l2$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o0;->c:Lcom/google/android/exoplayer2/l2$e;

    check-cast p1, Lcom/google/android/exoplayer2/l2$d;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/v0;->r0(ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method
