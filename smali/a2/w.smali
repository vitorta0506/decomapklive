.class public final synthetic La2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/s1;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La2/c$a;Lcom/google/android/exoplayer2/s1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/w;->a:La2/c$a;

    iput-object p2, p0, La2/w;->b:Lcom/google/android/exoplayer2/s1;

    iput p3, p0, La2/w;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/w;->a:La2/c$a;

    iget-object v1, p0, La2/w;->b:Lcom/google/android/exoplayer2/s1;

    iget v2, p0, La2/w;->c:I

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->E0(La2/c$a;Lcom/google/android/exoplayer2/s1;ILa2/c;)V

    return-void
.end method
