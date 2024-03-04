.class public Lcom/twitter/Extractor$Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/Extractor$Entity$Type;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/twitter/Extractor$Entity$Type;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/twitter/Extractor$Entity;->f:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/twitter/Extractor$Entity;->g:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/twitter/Extractor$Entity;->a:I

    .line 5
    iput p2, p0, Lcom/twitter/Extractor$Entity;->b:I

    .line 6
    iput-object p3, p0, Lcom/twitter/Extractor$Entity;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/twitter/Extractor$Entity;->d:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/twitter/Extractor$Entity;->e:Lcom/twitter/Extractor$Entity$Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/twitter/Extractor$Entity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/twitter/Extractor$Entity;

    .line 3
    iget-object v1, p0, Lcom/twitter/Extractor$Entity;->e:Lcom/twitter/Extractor$Entity$Type;

    iget-object v3, p1, Lcom/twitter/Extractor$Entity;->e:Lcom/twitter/Extractor$Entity$Type;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/twitter/Extractor$Entity;->a:I

    iget v3, p1, Lcom/twitter/Extractor$Entity;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/twitter/Extractor$Entity;->b:I

    iget v3, p1, Lcom/twitter/Extractor$Entity;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/twitter/Extractor$Entity;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/Extractor$Entity;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/twitter/Extractor$Entity;->e:Lcom/twitter/Extractor$Entity$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/Extractor$Entity;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/Extractor$Entity;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/Extractor$Entity;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/Extractor$Entity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/Extractor$Entity;->e:Lcom/twitter/Extractor$Entity$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/twitter/Extractor$Entity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/twitter/Extractor$Entity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
