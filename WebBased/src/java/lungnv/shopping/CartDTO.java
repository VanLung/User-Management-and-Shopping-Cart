/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lungnv.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author NGUYEN VAN LUNG SE140193
 */
public class CartDTO {

    private Map<String, TeaDTO> cart;

    public CartDTO() {
    }

    public CartDTO(Map<String, TeaDTO> cart) {
        this.cart = cart;
    }

    public Map<String, TeaDTO> getCart() {
        return cart;

    }

    public void setCart(Map<String, TeaDTO> cart) {
        this.cart = cart;
    }

    public void add(TeaDTO tea) {
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        if (this.cart.containsKey(tea.getId())) {
            int quantity = this.cart.get(tea.getId()).getQuantity();
            tea.setQuantity((quantity + tea.getQuantity()));
        }
        cart.put(tea.getId(), tea);
    }

    public void delete(String id) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.remove(id);
        }
    }

    public void update(String id, TeaDTO newtea) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.replace(id, newtea);
        }
    }
}

