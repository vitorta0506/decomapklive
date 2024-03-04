.class final Lcom/google/api/ChangeType$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ChangeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u0$d<",
        "Lcom/google/api/ChangeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/u0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ChangeType$a;->b(I)Lcom/google/api/ChangeType;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/api/ChangeType;
    .locals 0

    invoke-static {p1}, Lcom/google/api/ChangeType;->forNumber(I)Lcom/google/api/ChangeType;

    move-result-object p1

    return-object p1
.end method
