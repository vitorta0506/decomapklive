.class public final synthetic La2/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(La2/c$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c1;->a:La2/c$a;

    iput-boolean p2, p0, La2/c1;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La2/c1;->a:La2/c$a;

    iget-boolean v1, p0, La2/c1;->b:Z

    check-cast p1, La2/c;

    invoke-static {v0, v1, p1}, La2/n1;->l1(La2/c$a;ZLa2/c;)V

    return-void
.end method
