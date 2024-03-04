.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;
.super Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field I4:Ljava/lang/Boolean;

.field final synthetic J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->I4:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    return-void
.end method

.method public setColor(Lla/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setColor(Lla/b;)V

    .line 3
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 6
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->B0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lla/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getColor()Lla/b;

    move-result-object v0

    invoke-interface {v0}, Lla/b;->copy()Lla/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lla/c;->setColor(Lla/b;)V

    :cond_1
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    invoke-interface {p1}, Lla/a;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->I4:Ljava/lang/Boolean;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lla/a;->setIsDrawableOutside(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->I4:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->I4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lla/a;->setIsDrawableOutside(Z)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->k()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->setPen(Lla/e;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    :goto_0
    return-void
.end method

.method public setPen(Lla/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setPen(Lla/e;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lla/a;->setSize(F)V

    .line 7
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v0}, Lla/a;->setColor(Lla/b;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->P(Lla/a;I)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    move-result-object v0

    invoke-interface {p1, v0}, Lla/a;->setColor(Lla/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSize(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setSize(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;->J4:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getSize()F

    move-result v0

    invoke-interface {p1, v0}, Lla/c;->setSize(F)V

    :cond_0
    return-void
.end method
