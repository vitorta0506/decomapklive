.class public final synthetic La2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/k2;


# direct methods
.method public synthetic constructor <init>(La2/c$a;Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/b0;->a:La2/c$a;

    iput-object p2, p0, La2/b0;->b:Lcom/google/android/exoplayer2/k2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La2/b0;->a:La2/c$a;

    iget-object v1, p0, La2/b0;->b:Lcom/google/android/exoplayer2/k2;

    check-cast p1, La2/c;

    invoke-static {v0, v1, p1}, La2/n1;->D0(La2/c$a;Lcom/google/android/exoplayer2/k2;La2/c;)V

    return-void
.end method
