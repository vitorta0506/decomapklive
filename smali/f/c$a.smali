.class Lf/c$a;
.super Ln/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->f(Ln/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln/c<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ln/c;

.field final synthetic e:Lf/c;


# direct methods
.method constructor <init>(Lf/c;Ln/c;)V
    .locals 0

    iput-object p1, p0, Lf/c$a;->e:Lf/c;

    iput-object p2, p0, Lf/c$a;->d:Ln/c;

    invoke-direct {p0}, Ln/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ln/b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lf/c$a;->d(Ln/b;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public d(Ln/b;)Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/c$a;->d:Ln/c;

    invoke-virtual {v0, p1}, Ln/c;->a(Ln/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x40233333    # 2.55f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
