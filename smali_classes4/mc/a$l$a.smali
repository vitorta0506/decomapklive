.class Lmc/a$l$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a$l;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmc/a$l;


# direct methods
.method constructor <init>(Lmc/a$l;)V
    .locals 0

    iput-object p1, p0, Lmc/a$l$a;->a:Lmc/a$l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmc/a$l$a;->a:Lmc/a$l;

    iget-object p1, p1, Lmc/a$l;->c:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->d(Lmc/a;Z)Z

    .line 2
    iget-object p1, p0, Lmc/a$l$a;->a:Lmc/a$l;

    iget-object p1, p1, Lmc/a$l;->c:Lmc/a;

    invoke-static {p1, v0}, Lmc/a;->e(Lmc/a;Z)Z

    return-void
.end method
