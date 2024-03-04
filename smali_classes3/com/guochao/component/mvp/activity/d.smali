.class public final synthetic Lcom/guochao/component/mvp/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/guochao/component/mvp/activity/MVPActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/guochao/component/mvp/activity/d;->b:Lcom/guochao/component/mvp/activity/MVPActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/guochao/component/mvp/activity/d;->b:Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->g0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method
