.class Lcom/xiaomi/push/service/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Landroid/app/Notification;

.field final synthetic c:Lcom/xiaomi/push/service/o;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/o;ILandroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/o$b;->c:Lcom/xiaomi/push/service/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/xiaomi/push/service/o$b;->a:I

    iput-object p3, p0, Lcom/xiaomi/push/service/o$b;->b:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/service/o$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
