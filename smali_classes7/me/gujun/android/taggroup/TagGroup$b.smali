.class Lme/gujun/android/taggroup/TagGroup$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup;)V
    .locals 0

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Lme/gujun/android/taggroup/TagGroup$f;

    .line 2
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->k(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$f;->a(Lme/gujun/android/taggroup/TagGroup$f;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, v2}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$f;->b(Lme/gujun/android/taggroup/TagGroup$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0, p1}, Lme/gujun/android/taggroup/TagGroup;->w(Lme/gujun/android/taggroup/TagGroup$f;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    :cond_2
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->m(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$b;->a:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->m(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lme/gujun/android/taggroup/TagGroup$e;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
