.class Lmc/a$m$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a$m;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmc/a$m;


# direct methods
.method constructor <init>(Lmc/a$m;)V
    .locals 0

    iput-object p1, p0, Lmc/a$m$a;->a:Lmc/a$m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmc/a$m$a;->a:Lmc/a$m;

    iget-object p1, p1, Lmc/a$m;->c:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->g(Lmc/a;Z)Z

    .line 2
    iget-object p1, p0, Lmc/a$m$a;->a:Lmc/a$m;

    iget-object p1, p1, Lmc/a$m;->c:Lmc/a;

    invoke-static {p1, v0}, Lmc/a;->h(Lmc/a;Z)Z

    return-void
.end method
