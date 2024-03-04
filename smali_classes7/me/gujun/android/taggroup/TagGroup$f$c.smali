.class Lme/gujun/android/taggroup/TagGroup$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/gujun/android/taggroup/TagGroup$f;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/gujun/android/taggroup/TagGroup;

.field final synthetic b:Lme/gujun/android/taggroup/TagGroup$f;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup$f;Lme/gujun/android/taggroup/TagGroup;)V
    .locals 0

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_3

    .line 2
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup;->getLastNormalTagView()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4
    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup$f;->b(Lme/gujun/android/taggroup/TagGroup$f;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->a(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->a(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$d;

    move-result-object p1

    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p3, p3, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lme/gujun/android/taggroup/TagGroup$d;->b(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$f$c;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p3, p3, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p3}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p3, p1}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    .line 10
    :cond_1
    invoke-virtual {p2, v0}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    return p1
.end method
