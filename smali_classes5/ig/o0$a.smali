.class Lig/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig/o0;


# direct methods
.method constructor <init>(Lig/o0;)V
    .locals 0

    iput-object p1, p0, Lig/o0$a;->a:Lig/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lig/o0$a;->a:Lig/o0;

    invoke-static {v0}, Lig/o0;->a(Lig/o0;)V

    return-void
.end method
