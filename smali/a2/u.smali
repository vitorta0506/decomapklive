.class public final synthetic La2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/k1;

.field public final synthetic c:Lb2/g;


# direct methods
.method public synthetic constructor <init>(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/u;->a:La2/c$a;

    iput-object p2, p0, La2/u;->b:Lcom/google/android/exoplayer2/k1;

    iput-object p3, p0, La2/u;->c:Lb2/g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/u;->a:La2/c$a;

    iget-object v1, p0, La2/u;->b:Lcom/google/android/exoplayer2/k1;

    iget-object v2, p0, La2/u;->c:Lb2/g;

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->q0(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V

    return-void
.end method
