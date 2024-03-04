.class Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

.field final synthetic b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;->a:Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
