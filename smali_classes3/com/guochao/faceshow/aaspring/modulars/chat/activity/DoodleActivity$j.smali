.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/doodle/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lla/e;

.field b:Lla/b;

.field c:Ljava/lang/Float;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->a:Lla/e;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->b:Lla/b;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->c:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a(Lla/a;Lla/f;Z)V
    .locals 3

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    .line 2
    instance-of p3, p2, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz p3, :cond_8

    .line 3
    check-cast p2, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->N()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->P0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllItem()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla/c;

    .line 6
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->T(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->T(Z)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p3

    if-nez p3, :cond_8

    .line 10
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllItem()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/c;

    .line 11
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v0, :cond_4

    .line 12
    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->T(Z)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->a:Lla/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->a:Lla/e;

    invoke-interface {p1, p3}, Lla/a;->setPen(Lla/e;)V

    .line 15
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->a:Lla/e;

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->b:Lla/b;

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->b:Lla/b;

    invoke-interface {p1, p3}, Lla/a;->setColor(Lla/b;)V

    .line 18
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->b:Lla/b;

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->c:Ljava/lang/Float;

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->c:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-interface {p1, p3}, Lla/a;->setSize(F)V

    .line 21
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;->c:Ljava/lang/Float;

    :cond_8
    :goto_2
    return-void
.end method

.method public b(Lla/a;FF)V
    .locals 0

    return-void
.end method
