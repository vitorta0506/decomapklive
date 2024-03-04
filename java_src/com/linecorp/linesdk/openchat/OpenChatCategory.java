package com.linecorp.linesdk.openchat;

import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.linecorp.linesdk.R$string;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b \b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006#"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "", "id", "", "resourceId", "(Ljava/lang/String;III)V", "getId", "()I", "getResourceId", "NotSelected", "School", SharePlatformBean.Friend.NAME, "Company", "Organization", "Region", "Baby", "Sports", "Game", "Book", "Movies", "Photo", "Art", "Animation", "Music", "Tv", "Celebrity", "Food", "Travel", "Pet", "Car", "Fashion", "Health", "Finance", "Study", "Etc", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public enum OpenChatCategory {
    NotSelected(1, R$string.square_create_category_notselected),
    School(2, R$string.square_create_category_school),
    Friend(7, R$string.square_create_category_friend),
    Company(5, R$string.square_create_category_company),
    Organization(6, R$string.square_create_category_org),
    Region(8, R$string.square_create_category_region),
    Baby(28, R$string.square_create_category_baby),
    Sports(16, R$string.square_create_category_sports),
    Game(17, R$string.square_create_category_game),
    Book(29, R$string.square_create_category_book),
    Movies(30, R$string.square_create_category_movies),
    Photo(37, R$string.square_create_category_photo),
    Art(41, R$string.square_create_category_art),
    Animation(22, R$string.square_create_category_ani),
    Music(33, R$string.square_create_category_music),
    Tv(24, R$string.square_create_category_tv),
    Celebrity(26, R$string.square_create_category_celebrity),
    Food(12, R$string.square_create_category_food),
    Travel(18, R$string.square_create_category_travel),
    Pet(27, R$string.square_create_category_pet),
    Car(19, R$string.square_create_category_car),
    Fashion(20, R$string.square_create_category_fashion),
    Health(23, R$string.square_create_category_health),
    Finance(40, R$string.square_create_category_finance),
    Study(11, R$string.square_create_category_study),
    Etc(35, R$string.square_create_category_etc);
    

    /* renamed from: id  reason: collision with root package name */
    private final int f28151id;
    private final int resourceId;

    OpenChatCategory(int i9, int i10) {
        this.f28151id = i9;
        this.resourceId = i10;
    }

    public final int getId() {
        return this.f28151id;
    }

    public final int getResourceId() {
        return this.resourceId;
    }
}
