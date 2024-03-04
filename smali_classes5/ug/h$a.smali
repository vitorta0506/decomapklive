.class Lug/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/h;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/h;


# direct methods
.method constructor <init>(Lug/h;)V
    .locals 0

    iput-object p1, p0, Lug/h$a;->a:Lug/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lug/h$a;->a:Lug/h;

    invoke-static {v0}, Lug/h;->j(Lug/h;)V

    return-void
.end method
