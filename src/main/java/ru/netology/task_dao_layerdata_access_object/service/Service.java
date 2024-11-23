package ru.netology.task_dao_layerdata_access_object.service;

import lombok.AllArgsConstructor;
import ru.netology.task_dao_layerdata_access_object.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;

    public List<String> getProductName(String name) {
        return repository.findProductNamesByCustomerName(name);
    }
}
