.class Lj0/m$a;
.super Lv0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv0/g<",
        "Lj0/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lj0/m;


# direct methods
.method constructor <init>(Lj0/m;J)V
    .locals 0

    iput-object p1, p0, Lj0/m$a;->e:Lj0/m;

    invoke-direct {p0, p2, p3}, Lv0/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lj0/m$b;

    invoke-virtual {p0, p1, p2}, Lj0/m$a;->n(Lj0/m$b;Ljava/lang/Object;)V

    return-void
.end method

.method protected n(Lj0/m$b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lj0/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/m$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lj0/m$b;->c()V

    return-void
.end method
