.class public final synthetic La2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La2/c$a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/g;->a:La2/c$a;

    iput p2, p0, La2/g;->b:I

    iput p3, p0, La2/g;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/g;->a:La2/c$a;

    iget v1, p0, La2/g;->b:I

    iget v2, p0, La2/g;->c:I

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->J0(La2/c$a;IILa2/c;)V

    return-void
.end method
