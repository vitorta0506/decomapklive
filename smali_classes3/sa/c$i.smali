.class Lsa/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsa/c$i;->b:Lsa/c;

    iput-object p2, p0, Lsa/c$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lsa/c$i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onErrorCallback()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lsa/c$i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
