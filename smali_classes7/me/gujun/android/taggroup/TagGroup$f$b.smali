.class Lme/gujun/android/taggroup/TagGroup$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup$f;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup$f;->c()V

    .line 5
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->a(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->a(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$d;

    move-result-object p1

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p3, p2, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lme/gujun/android/taggroup/TagGroup$d;->a(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$b;->b:Lme/gujun/android/taggroup/TagGroup$f;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->t()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
