.class public Loa/a$a;
.super Loa/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loa/g$a;-><init>()V

    .line 2
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iput-object v0, p0, Loa/g$a;->a:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Loa/g$a;->b:F

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Loa/g$a;->c:F

    return-void
.end method
