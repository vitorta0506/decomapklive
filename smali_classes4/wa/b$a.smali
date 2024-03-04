.class Lwa/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/CountryData;

.field final synthetic b:Lwa/b;


# direct methods
.method constructor <init>(Lwa/b;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 0

    iput-object p1, p0, Lwa/b$a;->b:Lwa/b;

    iput-object p2, p0, Lwa/b$a;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lwa/b$a;->b:Lwa/b;

    iget-object v0, p0, Lwa/b$a;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-static {p1, v0}, Lwa/b;->a(Lwa/b;Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;

    .line 2
    iget-object p1, p0, Lwa/b$a;->b:Lwa/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
