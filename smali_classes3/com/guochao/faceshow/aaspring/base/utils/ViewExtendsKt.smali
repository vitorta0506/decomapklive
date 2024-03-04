.class public final Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "onClick",
        "",
        "Landroid/view/View;",
        "doubleClickInterval",
        "",
        "onClickListener",
        "Landroid/view/View$OnClickListener;",
        "lib_core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Landroid/view/View;JLandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$lambda-0(Landroid/view/View;JLandroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static final onClick(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/utils/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/utils/b;-><init>(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final onClick$lambda-0(Landroid/view/View;JLandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 5

    const-string v0, "$this_onClick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/guochao/lib_core/R$id;->no_double_click:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v1, v3, p1

    if-gtz v1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    invoke-interface {p3, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
