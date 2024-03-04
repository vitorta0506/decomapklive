.class public final synthetic Lcom/guochao/faceshow/userhomepage/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public synthetic constructor <init>(ILandroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/faceshow/userhomepage/d;->a:I

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/d;->b:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/userhomepage/d;->a:I

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->a(ILandroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
