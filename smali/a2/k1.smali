.class public final synthetic La2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(La2/c$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/k1;->a:La2/c$a;

    iput p2, p0, La2/k1;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La2/k1;->a:La2/c$a;

    iget v1, p0, La2/k1;->b:I

    check-cast p1, La2/c;

    invoke-static {v0, v1, p1}, La2/n1;->u0(La2/c$a;ILa2/c;)V

    return-void
.end method
