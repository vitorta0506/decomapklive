.class public final synthetic La2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/exoplayer2/l2$e;

.field public final synthetic d:Lcom/google/android/exoplayer2/l2$e;


# direct methods
.method public synthetic constructor <init>(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/k;->a:La2/c$a;

    iput p2, p0, La2/k;->b:I

    iput-object p3, p0, La2/k;->c:Lcom/google/android/exoplayer2/l2$e;

    iput-object p4, p0, La2/k;->d:Lcom/google/android/exoplayer2/l2$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, La2/k;->a:La2/c$a;

    iget v1, p0, La2/k;->b:I

    iget-object v2, p0, La2/k;->c:Lcom/google/android/exoplayer2/l2$e;

    iget-object v3, p0, La2/k;->d:Lcom/google/android/exoplayer2/l2$e;

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, v3, p1}, La2/n1;->R0(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;La2/c;)V

    return-void
.end method
