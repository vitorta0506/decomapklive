.class final Lv2/w$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lv2/w;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lv2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/w$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lv2/w$a$a;->b:Lv2/w;

    return-void
.end method
