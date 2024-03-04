.class public final synthetic La2/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La2/c$a;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/e1;->a:La2/c$a;

    iput-boolean p2, p0, La2/e1;->b:Z

    iput p3, p0, La2/e1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/e1;->a:La2/c$a;

    iget-boolean v1, p0, La2/e1;->b:Z

    iget v2, p0, La2/e1;->c:I

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->h1(La2/c$a;ZILa2/c;)V

    return-void
.end method
