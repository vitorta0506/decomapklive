.class public final synthetic Lk3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/k1;

.field public final synthetic c:Lb2/g;


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/q;->a:Lk3/w$a;

    iput-object p2, p0, Lk3/q;->b:Lcom/google/android/exoplayer2/k1;

    iput-object p3, p0, Lk3/q;->c:Lb2/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/q;->a:Lk3/w$a;

    iget-object v1, p0, Lk3/q;->b:Lcom/google/android/exoplayer2/k1;

    iget-object v2, p0, Lk3/q;->c:Lb2/g;

    invoke-static {v0, v1, v2}, Lk3/w$a;->i(Lk3/w$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method